import { useEffect, useState } from "react";
import { useLocation } from "wouter";
import { MobileHeader } from "@/components/mobile-header";
import { Progress } from "@/components/ui/progress";

export default function TransferProcessing() {
  const [, setLocation] = useLocation();
  const [progress, setProgress] = useState(0);

  useEffect(() => {
    const interval = setInterval(() => {
      setProgress((prev) => {
        const increment = Math.random() * 15;
        const newProgress = prev + increment;
        
        if (newProgress >= 100) {
          setTimeout(() => {
            setLocation('/success');
          }, 500);
          return 100;
        }
        
        return newProgress;
      });
    }, 300);

    return () => clearInterval(interval);
  }, [setLocation]);

  return (
    <div className="max-w-sm mx-auto bg-white min-h-screen">
      <MobileHeader title="Processing Transfer" />

      <div className="flex flex-col items-center justify-center h-96 p-6 fade-in">
        <div className="loading-spinner"></div>
        
        <h2 className="text-xl font-semibold text-gray-800 mt-6 mb-2">
          Processing Your Wire Transfer
        </h2>
        
        <p className="text-gray-600 text-center mb-8">
          Please wait while we process your wire transfer. This may take a few moments.
        </p>
        
        <div className="w-full max-w-xs">
          <div className="flex justify-between text-sm text-gray-600 mb-2">
            <span>Processing...</span>
            <span>{Math.round(progress)}%</span>
          </div>
          <Progress value={progress} className="h-2" />
        </div>
      </div>
    </div>
  );
}
