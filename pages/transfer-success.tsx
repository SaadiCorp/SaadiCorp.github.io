import { useLocation } from "wouter";
import { Check, Share } from "lucide-react";
import { MobileHeader } from "@/components/mobile-header";
import { Button } from "@/components/ui/button";
import { Card, CardContent } from "@/components/ui/card";
import { formatCurrency, formatDate, formatDateTime } from "@/lib/utils";

export default function TransferSuccess() {
  const [, setLocation] = useLocation();

  const beneficiaryData = JSON.parse(localStorage.getItem('beneficiaryData') || '{}');
  const transferData = JSON.parse(localStorage.getItem('transferData') || '{}');
  const confirmationNumber = localStorage.getItem('confirmationNumber') || '';
  const transferType = localStorage.getItem('transferType') || 'domestic';

  const fee = transferType === 'international' ? 45 : 15;
  const totalCost = (transferData.amount || 0) + fee;
  
  const now = new Date();
  const availableDate = new Date(now);
  availableDate.setDate(now.getDate() + (transferType === 'domestic' ? 1 : 3));

  const handleShare = async () => {
    const shareData = {
      title: 'Wire Transfer Confirmation',
      text: `Wire transfer of ${formatCurrency(transferData.amount)} has been sent to ${beneficiaryData.recipientName}`,
      url: window.location.href
    };

    if (navigator.share && navigator.canShare?.(shareData)) {
      try {
        await navigator.share(shareData);
      } catch (err) {
        console.log('Error sharing:', err);
      }
    } else {
      // Fallback: copy to clipboard
      const text = `Wire transfer of ${formatCurrency(transferData.amount)} has been sent to ${beneficiaryData.recipientName}. Confirmation #${confirmationNumber}`;
      try {
        await navigator.clipboard.writeText(text);
        alert('Transfer details copied to clipboard!');
      } catch (err) {
        console.log('Failed to copy to clipboard');
      }
    }
  };

  return (
    <div className="max-w-sm mx-auto bg-white min-h-screen">
      <MobileHeader 
        title="Success" 
        onShare={handleShare}
        backgroundColor="boa-success"
      />

      <div className="p-6 text-center fade-in">
        <div className="bg-green-100 w-20 h-20 rounded-full flex items-center justify-center mx-auto mb-6">
          <Check className="text-boa-success h-8 w-8" />
        </div>

        <h2 className="text-2xl font-semibold text-gray-800 mb-2">Your wire is processing</h2>
        <p className="text-gray-600 mb-8">
          Your wire transfer has been successfully submitted and is being processed.
        </p>

        <Card className="mb-6">
          <CardContent className="p-4 space-y-3 text-sm">
            <div className="flex justify-between">
              <span className="text-gray-600">Date sent</span>
              <span className="font-medium">{formatDateTime(now)}</span>
            </div>
            <div className="flex justify-between">
              <span className="text-gray-600">Date available</span>
              <div className="text-right">
                <div className="font-medium">{formatDate(availableDate)}</div>
                <div className="text-xs text-gray-500">May be available earlier</div>
              </div>
            </div>
            <div className="flex justify-between">
              <span className="text-gray-600">Confirmation #</span>
              <span className="font-medium">{confirmationNumber}</span>
            </div>
            <div className="flex justify-between">
              <span className="text-gray-600">To</span>
              <span className="font-medium">{beneficiaryData.recipientName}</span>
            </div>
            <div className="flex justify-between">
              <span className="text-gray-600">Recipient address</span>
              <span className="font-medium text-right max-w-48">
                {beneficiaryData.recipientAddress}, {beneficiaryData.recipientCity}
              </span>
            </div>
          </CardContent>
        </Card>

        <Card className="mb-6 bg-gray-50">
          <CardContent className="p-4">
            <h3 className="font-semibold text-gray-800 mb-3">Your total transfer cost</h3>
            <div className="space-y-2 text-sm">
              <div className="flex justify-between">
                <span className="text-gray-600">Transfer amount</span>
                <div className="text-right">
                  <div className="font-medium">{formatCurrency(transferData.amount)}</div>
                  <div className="text-xs text-gray-500">From Savings</div>
                </div>
              </div>
              <div className="flex justify-between">
                <span className="text-gray-600">Transfer fees</span>
                <span className="font-medium text-red-600">+ {formatCurrency(fee)}</span>
              </div>
              <div className="border-t pt-2 flex justify-between font-semibold">
                <span>Total cost</span>
                <span>{formatCurrency(totalCost)}</span>
              </div>
            </div>
          </CardContent>
        </Card>

        <div className="space-y-3">
          <Button 
            onClick={() => setLocation('/tracking')}
            className="w-full boa-blue text-white hover:opacity-90"
          >
            Track Transfer
          </Button>
          <Button 
            onClick={handleShare}
            variant="outline" 
            className="w-full border-boa-blue text-boa-blue hover:bg-boa-blue hover:text-white"
          >
            <Share className="mr-2 h-4 w-4" />
            Share Details
          </Button>
        </div>
      </div>
    </div>
  );
}
