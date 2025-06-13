import { useQuery } from "@tanstack/react-query";
import { Check, Clock, Building2, CheckCircle, Headphones } from "lucide-react";
import { MobileHeader } from "@/components/mobile-header";
import { Button } from "@/components/ui/button";
import { Card, CardContent } from "@/components/ui/card";
import { useLocation } from "wouter";
import { formatCurrency } from "@/lib/utils";

interface StatusStep {
  stage: string;
  status: 'completed' | 'in_progress' | 'pending';
  title: string;
  description: string;
  timestamp?: string;
  icon: React.ReactNode;
}

export default function TransferTracking() {
  const [, setLocation] = useLocation();
  const wireTransferId = localStorage.getItem('wireTransferId');
  const confirmationNumber = localStorage.getItem('confirmationNumber') || '';
  const transferData = JSON.parse(localStorage.getItem('transferData') || '{}');

  const { data: statuses, isLoading } = useQuery({
    queryKey: [`/api/wire-transfers/${wireTransferId}/status`],
    enabled: !!wireTransferId,
  });

  const statusSteps: StatusStep[] = [
    {
      stage: 'initiated',
      status: 'completed',
      title: 'Transfer Initiated',
      description: 'Your wire transfer has been successfully submitted',
      timestamp: 'Today, 2:15 PM',
      icon: <Check className="text-white text-sm" />
    },
    {
      stage: 'debited',
      status: 'completed',
      title: 'Funds Debited',
      description: 'Amount has been deducted from your account',
      timestamp: 'Today, 2:16 PM',
      icon: <Check className="text-white text-sm" />
    },
    {
      stage: 'federal_processing',
      status: 'in_progress',
      title: 'Processing at Federal Reserve',
      description: 'Transfer is being processed through the federal system',
      timestamp: 'In progress...',
      icon: <Clock className="text-white text-sm" />
    },
    {
      stage: 'sent_to_bank',
      status: 'pending',
      title: 'Sent to Recipient Bank',
      description: 'Transfer will be sent to the recipient\'s bank',
      timestamp: 'Pending',
      icon: <Building2 className="text-gray-600 text-sm" />
    },
    {
      stage: 'completed',
      status: 'pending',
      title: 'Funds Available',
      description: 'Funds will be available to the recipient',
      timestamp: 'Expected: Tomorrow, 10:00 AM',
      icon: <CheckCircle className="text-gray-600 text-sm" />
    }
  ];

  const getStepStyle = (status: string) => {
    switch (status) {
      case 'completed':
        return 'bg-boa-success';
      case 'in_progress':
        return 'boa-blue';
      case 'pending':
      default:
        return 'bg-gray-300';
    }
  };

  const getStepLineStyle = (index: number) => {
    const currentStep = statusSteps[index];
    const nextStep = statusSteps[index + 1];
    
    if (currentStep.status === 'completed') {
      return 'bg-boa-success';
    }
    return 'bg-gray-200';
  };

  return (
    <div className="max-w-sm mx-auto bg-white min-h-screen">
      <MobileHeader 
        title="Track Transfer" 
        onBack={() => setLocation('/success')}
      />

      <div className="p-6 fade-in">
        <div className="mb-6">
          <h2 className="text-xl font-semibold text-gray-800 mb-2">Transfer Progress</h2>
          <p className="text-gray-600">Track your wire transfer status in real-time.</p>
        </div>

        {/* Transfer Status Card */}
        <Card className="bg-gradient-to-r from-blue-600 to-blue-500 text-white mb-6">
          <CardContent className="p-6">
            <div className="flex items-center justify-between mb-4">
              <div>
                <h3 className="text-lg font-semibold">Wire Transfer</h3>
                <p className="text-sm opacity-90">Confirmation #{confirmationNumber}</p>
              </div>
              <div className="bg-white bg-opacity-20 p-3 rounded-full">
                <svg className="h-6 w-6" fill="currentColor" viewBox="0 0 20 20">
                  <path d="M10.894 2.553a1 1 0 00-1.788 0l-7 14a1 1 0 001.169 1.409l5-1.429A1 1 0 009 15.571V11a1 1 0 112 0v4.571a1 1 0 00.725.962l5 1.428a1 1 0 001.17-1.408l-7-14z"/>
                </svg>
              </div>
            </div>
            <div className="flex items-center justify-between">
              <div>
                <p className="text-sm opacity-90">Amount</p>
                <p className="text-xl font-semibold">{formatCurrency(transferData.amount)}</p>
              </div>
              <div className="text-right">
                <p className="text-sm opacity-90">Status</p>
                <p className="text-lg font-semibold">Processing</p>
              </div>
            </div>
          </CardContent>
        </Card>

        {/* Progress Timeline */}
        <div className="space-y-4">
          {statusSteps.map((step, index) => (
            <div key={step.stage} className="relative">
              <div className="flex items-start space-x-4">
                <div className={`${getStepStyle(step.status)} p-2 rounded-full flex-shrink-0`}>
                  {step.icon}
                </div>
                <div className="flex-1 min-w-0">
                  <h4 className={`font-semibold ${step.status === 'pending' ? 'text-gray-400' : 'text-gray-800'}`}>
                    {step.title}
                  </h4>
                  <p className={`text-sm ${step.status === 'pending' ? 'text-gray-400' : 'text-gray-600'}`}>
                    {step.description}
                  </p>
                  <p className={`text-xs mt-1 ${step.status === 'pending' ? 'text-gray-400' : 'text-gray-500'}`}>
                    {step.timestamp}
                  </p>
                </div>
              </div>
              
              {/* Connecting line */}
              {index < statusSteps.length - 1 && (
                <div 
                  className={`absolute left-5 top-10 w-0.5 h-8 ${getStepLineStyle(index)}`}
                />
              )}
            </div>
          ))}
        </div>

        {/* Estimated Completion */}
        <div className="mt-8 p-4 bg-blue-50 rounded-lg">
          <div className="flex items-center space-x-3">
            <Clock className="text-boa-blue h-5 w-5" />
            <div>
              <h4 className="font-medium text-gray-800">Estimated Completion</h4>
              <p className="text-sm text-gray-600">Tomorrow, June 10, 2025 by 10:00 AM</p>
            </div>
          </div>
        </div>

        {/* Contact Support */}
        <div className="mt-6">
          <Button 
            variant="outline" 
            className="w-full border-gray-300 text-gray-700 hover:bg-gray-50"
          >
            <Headphones className="mr-2 h-4 w-4" />
            Contact Support
          </Button>
        </div>
      </div>
    </div>
  );
}
