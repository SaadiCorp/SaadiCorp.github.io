import { pgTable, text, serial, integer, decimal, timestamp, boolean } from "drizzle-orm/pg-core";
import { createInsertSchema } from "drizzle-zod";
import { z } from "zod";

export const beneficiaries = pgTable("beneficiaries", {
  id: serial("id").primaryKey(),
  recipientName: text("recipient_name").notNull(),
  recipientAddress: text("recipient_address").notNull(),
  recipientCity: text("recipient_city").notNull(),
  recipientState: text("recipient_state"),
  recipientZip: text("recipient_zip"),
  recipientCountry: text("recipient_country").notNull(),
  bankName: text("bank_name").notNull(),
  routingNumber: text("routing_number").notNull(),
  accountNumber: text("account_number").notNull(),
  swiftCode: text("swift_code"),
});

export const wireTransfers = pgTable("wire_transfers", {
  id: serial("id").primaryKey(),
  beneficiaryId: integer("beneficiary_id").references(() => beneficiaries.id).notNull(),
  transferType: text("transfer_type").notNull(), // 'domestic' or 'international'
  amount: decimal("amount", { precision: 10, scale: 2 }).notNull(),
  currency: text("currency").default("USD").notNull(),
  exchangeRate: decimal("exchange_rate", { precision: 10, scale: 4 }),
  foreignAmount: decimal("foreign_amount", { precision: 15, scale: 2 }),
  targetCurrency: text("target_currency"),
  fee: decimal("fee", { precision: 8, scale: 2 }).notNull(),
  totalCost: decimal("total_cost", { precision: 10, scale: 2 }).notNull(),
  confirmationNumber: text("confirmation_number").notNull().unique(),
  status: text("status").default("processing").notNull(), // 'processing', 'completed', 'failed'
  createdAt: timestamp("created_at").defaultNow().notNull(),
  estimatedCompletion: timestamp("estimated_completion"),
});

export const transferStatus = pgTable("transfer_status", {
  id: serial("id").primaryKey(),
  transferId: integer("transfer_id").references(() => wireTransfers.id).notNull(),
  stage: text("stage").notNull(), // 'initiated', 'debited', 'federal_processing', 'sent_to_bank', 'completed'
  status: text("status").notNull(), // 'completed', 'in_progress', 'pending'
  timestamp: timestamp("timestamp").defaultNow().notNull(),
  description: text("description").notNull(),
});

export const insertBeneficiarySchema = createInsertSchema(beneficiaries).omit({
  id: true,
});

export const insertWireTransferSchema = createInsertSchema(wireTransfers).omit({
  id: true,
  confirmationNumber: true,
  createdAt: true,
});

export const insertTransferStatusSchema = createInsertSchema(transferStatus).omit({
  id: true,
  timestamp: true,
});

export type Beneficiary = typeof beneficiaries.$inferSelect;
export type InsertBeneficiary = z.infer<typeof insertBeneficiarySchema>;
export type WireTransfer = typeof wireTransfers.$inferSelect;
export type InsertWireTransfer = z.infer<typeof insertWireTransferSchema>;
export type TransferStatus = typeof transferStatus.$inferSelect;
export type InsertTransferStatus = z.infer<typeof insertTransferStatusSchema>;
