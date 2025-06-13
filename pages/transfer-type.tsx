import { Flag, Globe } from "lucide-react";
import { MobileHeader } from "@/components/mobile-header";
import { Card, CardContent } from "@/components/ui/card";
import { useLocation } from "wouter";

export default function TransferType() {
  const [, setLocation] = useLocation();

  const selectTransferType = (type: 'domestic' | 'international') => {
    localStorage.setItem('transferType', type);
    setLocation('/beneficiary');
  };

  return (
    <div className="max-w-sm mx-auto bg-white min-h-screen">
      <MobileHeader 
        title="Wire Transfer" 
        onBack={() => setLocation('/')}
      />

      <div className="p-6 fade-in">
        <div className="mb-8">
          <h2 className="text-xl font-semibold text-gray-800 mb-2">Choose Transfer Type</h2>
          <p className="text-gray-600">Select whether you're sending money domestically or internationally.</p>
        </div>

        <div className="space-y-4">
          <Card 
            className="cursor-pointer hover:border-boa-blue transition-colors"
            onClick={() => selectTransferType('domestic')}
          >
            <CardContent className="p-4">
              <div className="flex items-start space-x-4">
                <div className="bg-blue-50 p-3 rounded-full">
                  <Flag className="text-boa-blue h-6 w-6" />
                </div>
                <div className="flex-1">
                  <h3 className="font-semibold text-gray-800">Domestic Wire</h3>
                  <p className="text-sm text-gray-600 mt-1">Send money within the United States</p>
                  <p className="text-sm font-medium text-boa-blue mt-2">$15.00 fee</p>
                </div>
                <div className="text-gray-400">›</div>
              </div>
            </CardContent>
          </Card>

          <Card 
            className="cursor-pointer hover:border-boa-blue transition-colors"
            onClick={() => selectTransferType('international')}
          >
            <CardContent className="p-4">
              <div className="flex items-start space-x-4">
                <div className="bg-blue-50 p-3 rounded-full">
                  <Globe className="text-boa-blue h-6 w-6" />
                </div>
                <div className="flex-1">
                  <h3 className="font-semibold text-gray-800">International Wire</h3>
                  <p className="text-sm text-gray-600 mt-1">Send money to banks worldwide</p>
                  <p className="text-sm font-medium text-boa-blue mt-2">$45.00 fee</p>
                </div>
                <div className="text-gray-400">›</div>
              </div>
            </CardContent>
          </Card>
        </div>

        <div className="mt-8 p-4 bg-blue-50 rounded-lg">
          <div className="flex items-start space-x-3">
            <div className="bg-blue-100 p-1 rounded-full mt-1">
              <div className="w-3 h-3 bg-boa-blue rounded-full"></div>
            </div>
            <div>
              <h4 className="font-medium text-gray-800">Important Information</h4>
              <p className="text-sm text-gray-600 mt-1">
                Wire transfers are typically processed the same business day if sent before 2:00 PM ET.
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
