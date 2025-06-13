import { useLocation } from "wouter";
import { useMutation } from "@tanstack/react-query";
import { User, DollarSign, Building2, Clock } from "lucide-react";
import { MobileHeader } from "@/components/mobile-header";
import { Button } from "@/components/ui/button";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { apiRequest } from "@/lib/queryClient";
import { formatCurrency, formatAccountNumber } from "@/lib/utils";
import { useToast } from "@/hooks/use-toast";

export default function TransferReview() {
  const [, setLocation] = useLocation();
  const { toast } = useToast();

  const transferType = localStorage.getItem('transferType') || 'domestic';
  const beneficiaryData = JSON.parse(localStorage.getItem('beneficiaryData') || '{}');
  const transferData = JSON.parse(localStorage.getItem('transferData') || '{}');
  const beneficiaryId = localStorage.getItem('beneficiaryId');

  const fee = transferType === 'international' ? 45 : 15;
  const totalCost = (transferData.amount || 0) + fee;

  const createWireTransferMutation = useMutation({
    mutationFn: async () => {
      const wireTransferData = {
        beneficiaryId: parseInt(beneficiaryId || '0'),
        transferType,
        amount: transferData.amount.toString(),
        currency: transferData.currency || 'USD',
        exchangeRate: transferData.exchangeRate?.toString(),
        foreignAmount: transferData.foreignAmount?.toString(),
        targetCurrency: transferData.targetCurrency,
        fee: fee.toString(),
        totalCost: totalCost.toString(),
        status: 'processing'
      };

      const response = await apiRequest('POST', '/api/wire-transfers', wireTransferData);
      return response.json();
    },
    onSuccess: (wireTransfer) => {
      localStorage.setItem('wireTransferId', wireTransfer.id.toString());
      localStorage.setItem('confirmationNumber', wireTransfer.confirmationNumber);
      setLocation('/processing');
    },
    onError: (error) => {
      toast({
        title: "Error",
        description: "Failed to create wire transfer. Please try again.",
        variant: "destructive",
      });
    },
  });

  const handleConfirm = () => {
    createWireTransferMutation.mutate();
  };

  const goBack = () => {
    if (transferType === 'international') {
      setLocation('/currency');
    } else {
      setLocation('/beneficiary');
    }
  };

  return (
    <div className="max-w-sm mx-auto bg-white min-h-screen">
      <MobileHeader 
        title="Review Transfer" 
        onBack={goBack}
      />

      <div className="p-6 pb-20 fade-in">
        <div className="mb-6">
          <h2 className="text-xl font-semibold text-gray-800 mb-2">Transfer Summary</h2>
          <p className="text-gray-600">Please review all details before confirming your wire transfer.</p>
        </div>

        {/* Recipient Details */}
        <Card className="mb-4">
          <CardHeader className="pb-3">
            <CardTitle className="flex items-center text-base">
              <User className="text-boa-blue mr-2 h-4 w-4" />
              Recipient
            </CardTitle>
          </CardHeader>
          <CardContent className="space-y-2 text-sm">
            <div>
              <span className="text-gray-600">Name:</span>{" "}
              <span className="font-medium">{beneficiaryData.recipientName}</span>
            </div>
            <div>
              <span className="text-gray-600">Address:</span>{" "}
              <span className="font-medium">
                {beneficiaryData.recipientAddress}, {beneficiaryData.recipientCity}
              </span>
            </div>
            <div>
              <span className="text-gray-600">Bank:</span>{" "}
              <span className="font-medium">{beneficiaryData.bankName}</span>
            </div>
            <div>
              <span className="text-gray-600">Account:</span>{" "}
              <span className="font-medium">{formatAccountNumber(beneficiaryData.accountNumber)}</span>
            </div>
          </CardContent>
        </Card>

        {/* Transfer Amount */}
        <Card className="mb-4">
          <CardHeader className="pb-3">
            <CardTitle className="flex items-center text-base">
              <DollarSign className="text-boa-blue mr-2 h-4 w-4" />
              Transfer Details
            </CardTitle>
          </CardHeader>
          <CardContent className="space-y-2">
            <div className="flex justify-between">
              <span className="text-gray-600">Transfer Amount</span>
              <span className="font-medium">{formatCurrency(transferData.amount)}</span>
            </div>
            
            {transferType === 'international' && transferData.exchangeRate && (
              <>
                <div className="flex justify-between">
                  <span className="text-gray-600">Exchange Rate</span>
                  <span className="font-medium">
                    1 USD = {transferData.exchangeRate} {transferData.targetCurrency}
                  </span>
                </div>
                <div className="flex justify-between">
                  <span className="text-gray-600">Recipient Receives</span>
                  <span className="font-medium">
                    {transferData.foreignAmount} {transferData.targetCurrency}
                  </span>
                </div>
              </>
            )}
            
            <div className="flex justify-between text-red-600">
              <span>Transfer Fee</span>
              <span className="font-medium">{formatCurrency(fee)}</span>
            </div>
            <div className="border-t pt-2 flex justify-between font-semibold text-lg">
              <span>Total Cost</span>
              <span>{formatCurrency(totalCost)}</span>
            </div>
          </CardContent>
        </Card>

        {/* From Account */}
        <Card className="mb-6">
          <CardHeader className="pb-3">
            <CardTitle className="flex items-center text-base">
              <Building2 className="text-boa-blue mr-2 h-4 w-4" />
              From Account
            </CardTitle>
          </CardHeader>
          <CardContent>
            <div className="flex items-center justify-between">
              <div>
                <div className="font-medium">Advantage Plus Banking</div>
                <div className="text-sm text-gray-600">****1234</div>
              </div>
              <div className="text-right">
                <div className="text-sm text-gray-600">Available Balance</div>
                <div className="font-semibold text-boa-success">{formatCurrency(5247.83)}</div>
              </div>
            </div>
          </CardContent>
        </Card>

        <div className="p-4 bg-blue-50 rounded-lg">
          <div className="flex items-start space-x-3">
            <Clock className="text-boa-blue mt-1 h-4 w-4" />
            <div>
              <h4 className="font-medium text-gray-800">Processing Time</h4>
              <p className="text-sm text-gray-600 mt-1">
                {transferType === 'domestic' 
                  ? "Domestic wires typically process the same business day if sent before 2:00 PM ET."
                  : "International wires typically take 1-5 business days to process."
                }
              </p>
            </div>
          </div>
        </div>
      </div>

      <div className="fixed bottom-0 left-0 right-0 max-w-sm mx-auto bg-white border-t border-gray-200 p-4">
        <Button 
          onClick={handleConfirm}
          className="w-full boa-blue text-white hover:opacity-90"
          disabled={createWireTransferMutation.isPending}
        >
          {createWireTransferMutation.isPending ? "Confirming..." : "Confirm Transfer"}
        </Button>
      </div>
    </div>
  );
}
