import { useState, useEffect } from "react";
import { useLocation } from "wouter";
import { useQuery } from "@tanstack/react-query";
import { ArrowDown, RefreshCw } from "lucide-react";
import { MobileHeader } from "@/components/mobile-header";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { getCurrencyFromCountry, getCurrencySymbol, calculateExchange } from "@/lib/currency-rates";

export default function CurrencyExchange() {
  const [, setLocation] = useLocation();
  const [sendAmount, setSendAmount] = useState<string>("");
  const [receiveAmount, setReceiveAmount] = useState<string>("");

  const beneficiaryData = JSON.parse(localStorage.getItem('beneficiaryData') || '{}');
  const toCurrency = getCurrencyFromCountry(beneficiaryData.recipientCountry);
  const toCurrencySymbol = getCurrencySymbol(toCurrency);

  const { data: exchangeRate, isLoading } = useQuery({
    queryKey: ['/api/exchange-rates/USD/' + toCurrency],
    enabled: !!toCurrency && toCurrency !== 'USD',
  });

  useEffect(() => {
    if (sendAmount && exchangeRate) {
      const amount = parseFloat(sendAmount);
      if (!isNaN(amount)) {
        const converted = calculateExchange(amount, exchangeRate.rate);
        setReceiveAmount(converted.toFixed(2));
      }
    } else {
      setReceiveAmount("");
    }
  }, [sendAmount, exchangeRate]);

  const handleContinue = () => {
    if (sendAmount && parseFloat(sendAmount) > 0) {
      const transferData = {
        amount: parseFloat(sendAmount),
        currency: 'USD',
        exchangeRate: exchangeRate?.rate,
        foreignAmount: parseFloat(receiveAmount),
        targetCurrency: toCurrency
      };
      localStorage.setItem('transferData', JSON.stringify(transferData));
      setLocation('/review');
    }
  };

  return (
    <div className="max-w-sm mx-auto bg-white min-h-screen">
      <MobileHeader 
        title="Currency Exchange" 
        onBack={() => setLocation('/beneficiary')}
      />

      <div className="p-6 pb-20 fade-in">
        <div className="mb-6">
          <h2 className="text-xl font-semibold text-gray-800 mb-2">Exchange Rate</h2>
          <p className="text-gray-600">Current exchange rates for your international transfer.</p>
        </div>

        {isLoading ? (
          <div className="flex justify-center py-8">
            <RefreshCw className="h-8 w-8 animate-spin text-boa-blue" />
          </div>
        ) : (
          <>
            <div className="bg-gradient-to-r from-blue-600 to-blue-500 rounded-lg p-6 text-white mb-6">
              <div className="flex items-center justify-between mb-4">
                <div className="text-center">
                  <div className="text-sm opacity-90">From</div>
                  <div className="text-2xl font-bold">USD</div>
                </div>
                <div className="bg-white bg-opacity-20 p-2 rounded-full">
                  <RefreshCw className="h-5 w-5" />
                </div>
                <div className="text-center">
                  <div className="text-sm opacity-90">To</div>
                  <div className="text-2xl font-bold">{toCurrency}</div>
                </div>
              </div>
              <div className="text-center">
                <div className="text-sm opacity-90">Exchange Rate</div>
                <div className="text-xl font-semibold">
                  1 USD = {exchangeRate?.rate.toFixed(2)} {toCurrency}
                </div>
                <div className="text-xs opacity-75 mt-1">
                  Last updated: {new Date().toLocaleDateString()} {new Date().toLocaleTimeString()}
                </div>
              </div>
            </div>

            <div className="space-y-4">
              <div>
                <Label htmlFor="sendAmount">Amount to Send (USD)</Label>
                <div className="relative mt-2">
                  <span className="absolute left-4 top-1/2 transform -translate-y-1/2 text-gray-500">$</span>
                  <Input
                    id="sendAmount"
                    type="number"
                    step="0.01"
                    min="1"
                    placeholder="0.00"
                    value={sendAmount}
                    onChange={(e) => setSendAmount(e.target.value)}
                    className="pl-8"
                  />
                </div>
              </div>

              <div className="flex items-center justify-center py-2">
                <ArrowDown className="h-5 w-5 text-gray-400" />
              </div>

              <div>
                <Label htmlFor="receiveAmount">Recipient Will Receive</Label>
                <div className="relative mt-2">
                  <span className="absolute left-4 top-1/2 transform -translate-y-1/2 text-gray-500">
                    {toCurrencySymbol}
                  </span>
                  <Input
                    id="receiveAmount"
                    value={receiveAmount}
                    readOnly
                    className="pl-8 bg-gray-50"
                    placeholder="0.00"
                  />
                </div>
              </div>
            </div>

            <div className="mt-6 p-4 bg-yellow-50 rounded-lg">
              <div className="flex items-start space-x-3">
                <div className="bg-yellow-100 p-1 rounded-full mt-1">
                  <div className="w-3 h-3 bg-yellow-500 rounded-full"></div>
                </div>
                <div>
                  <h4 className="font-medium text-gray-800">Exchange Rate Lock</h4>
                  <p className="text-sm text-gray-600 mt-1">
                    This rate is guaranteed for 30 minutes from confirmation.
                  </p>
                </div>
              </div>
            </div>
          </>
        )}
      </div>

      <div className="fixed bottom-0 left-0 right-0 max-w-sm mx-auto bg-white border-t border-gray-200 p-4">
        <Button 
          onClick={handleContinue}
          className="w-full boa-blue text-white hover:opacity-90"
          disabled={!sendAmount || parseFloat(sendAmount) <= 0 || isLoading}
        >
          Continue to Review
        </Button>
      </div>
    </div>
  );
}
