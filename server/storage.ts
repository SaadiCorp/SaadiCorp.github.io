import { beneficiaries, wireTransfers, transferStatus, type Beneficiary, type InsertBeneficiary, type WireTransfer, type InsertWireTransfer, type TransferStatus, type InsertTransferStatus } from "@shared/schema";

export interface IStorage {
  // Beneficiaries
  createBeneficiary(beneficiary: InsertBeneficiary): Promise<Beneficiary>;
  getBeneficiary(id: number): Promise<Beneficiary | undefined>;
  
  // Wire Transfers
  createWireTransfer(transfer: InsertWireTransfer): Promise<WireTransfer>;
  getWireTransfer(id: number): Promise<WireTransfer | undefined>;
  getWireTransferByConfirmation(confirmationNumber: string): Promise<WireTransfer | undefined>;
  updateWireTransferStatus(id: number, status: string): Promise<void>;
  
  // Transfer Status
  createTransferStatus(status: InsertTransferStatus): Promise<TransferStatus>;
  getTransferStatusByTransferId(transferId: number): Promise<TransferStatus[]>;
  
  // Get combined transfer data
  getTransferWithBeneficiary(transferId: number): Promise<(WireTransfer & { beneficiary: Beneficiary }) | undefined>;
}

export class MemStorage implements IStorage {
  private beneficiaries: Map<number, Beneficiary>;
  private wireTransfers: Map<number, WireTransfer>;
  private transferStatuses: Map<number, TransferStatus>;
  private currentBeneficiaryId: number;
  private currentTransferId: number;
  private currentStatusId: number;

  constructor() {
    this.beneficiaries = new Map();
    this.wireTransfers = new Map();
    this.transferStatuses = new Map();
    this.currentBeneficiaryId = 1;
    this.currentTransferId = 1;
    this.currentStatusId = 1;
  }

  async createBeneficiary(insertBeneficiary: InsertBeneficiary): Promise<Beneficiary> {
    const id = this.currentBeneficiaryId++;
    const beneficiary: Beneficiary = { ...insertBeneficiary, id };
    this.beneficiaries.set(id, beneficiary);
    return beneficiary;
  }

  async getBeneficiary(id: number): Promise<Beneficiary | undefined> {
    return this.beneficiaries.get(id);
  }

  async createWireTransfer(insertTransfer: InsertWireTransfer): Promise<WireTransfer> {
    const id = this.currentTransferId++;
    const confirmationNumber = Math.floor(Math.random() * 9000000 + 1000000).toString();
    const now = new Date();
    const estimatedCompletion = new Date(now);
    
    // Set estimated completion based on transfer type
    if (insertTransfer.transferType === 'domestic') {
      estimatedCompletion.setDate(now.getDate() + 1); // Next business day
    } else {
      estimatedCompletion.setDate(now.getDate() + 3); // 3 business days for international
    }

    const wireTransfer: WireTransfer = {
      ...insertTransfer,
      id,
      confirmationNumber,
      createdAt: now,
      estimatedCompletion,
      status: 'processing'
    };
    
    this.wireTransfers.set(id, wireTransfer);
    
    // Create initial status entries
    await this.createTransferStatus({
      transferId: id,
      stage: 'initiated',
      status: 'completed',
      description: 'Your wire transfer has been successfully submitted'
    });
    
    await this.createTransferStatus({
      transferId: id,
      stage: 'debited',
      status: 'completed',
      description: 'Amount has been deducted from your account'
    });
    
    await this.createTransferStatus({
      transferId: id,
      stage: 'federal_processing',
      status: 'in_progress',
      description: 'Transfer is being processed through the federal system'
    });
    
    await this.createTransferStatus({
      transferId: id,
      stage: 'sent_to_bank',
      status: 'pending',
      description: 'Transfer will be sent to the recipient\'s bank'
    });
    
    await this.createTransferStatus({
      transferId: id,
      stage: 'completed',
      status: 'pending',
      description: 'Funds will be available to the recipient'
    });
    
    return wireTransfer;
  }

  async getWireTransfer(id: number): Promise<WireTransfer | undefined> {
    return this.wireTransfers.get(id);
  }

  async getWireTransferByConfirmation(confirmationNumber: string): Promise<WireTransfer | undefined> {
    return Array.from(this.wireTransfers.values()).find(
      (transfer) => transfer.confirmationNumber === confirmationNumber
    );
  }

  async updateWireTransferStatus(id: number, status: string): Promise<void> {
    const transfer = this.wireTransfers.get(id);
    if (transfer) {
      transfer.status = status;
      this.wireTransfers.set(id, transfer);
    }
  }

  async createTransferStatus(insertStatus: InsertTransferStatus): Promise<TransferStatus> {
    const id = this.currentStatusId++;
    const status: TransferStatus = {
      ...insertStatus,
      id,
      timestamp: new Date()
    };
    this.transferStatuses.set(id, status);
    return status;
  }

  async getTransferStatusByTransferId(transferId: number): Promise<TransferStatus[]> {
    return Array.from(this.transferStatuses.values())
      .filter((status) => status.transferId === transferId)
      .sort((a, b) => a.timestamp.getTime() - b.timestamp.getTime());
  }

  async getTransferWithBeneficiary(transferId: number): Promise<(WireTransfer & { beneficiary: Beneficiary }) | undefined> {
    const transfer = this.wireTransfers.get(transferId);
    if (!transfer) return undefined;
    
    const beneficiary = this.beneficiaries.get(transfer.beneficiaryId);
    if (!beneficiary) return undefined;
    
    return { ...transfer, beneficiary };
  }
}

export const storage = new MemStorage();
