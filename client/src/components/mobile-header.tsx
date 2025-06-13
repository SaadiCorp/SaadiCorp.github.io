import { ArrowLeft, Share } from "lucide-react";
import { Button } from "@/components/ui/button";

interface MobileHeaderProps {
  title: string;
  onBack?: () => void;
  onShare?: () => void;
  backgroundColor?: string;
  textColor?: string;
}

export function MobileHeader({ 
  title, 
  onBack, 
  onShare, 
  backgroundColor = "boa-blue",
  textColor = "text-white" 
}: MobileHeaderProps) {
  return (
    <div className={`${backgroundColor} ${textColor} p-4`}>
      <div className="flex items-center justify-between">
        {onBack ? (
          <Button 
            variant="ghost" 
            size="icon" 
            onClick={onBack}
            className={`${textColor} hover:bg-white/10`}
          >
            <ArrowLeft className="h-5 w-5" />
          </Button>
        ) : (
          <div className="w-10" />
        )}
        
        <h1 className="text-lg font-semibold">{title}</h1>
        
        {onShare ? (
          <Button 
            variant="ghost" 
            size="icon" 
            onClick={onShare}
            className={`${textColor} hover:bg-white/10`}
          >
            <Share className="h-5 w-5" />
          </Button>
        ) : (
          <div className="w-10" />
        )}
      </div>
    </div>
  );
}
