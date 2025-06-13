import { Switch, Route } from "wouter";
import { queryClient } from "./lib/queryClient";
import { QueryClientProvider } from "@tanstack/react-query";
import { Toaster } from "@/components/ui/toaster";
import { TooltipProvider } from "@/components/ui/tooltip";
import NotFound from "@/pages/not-found";
import TransferType from "@/pages/transfer-type";
import BeneficiaryForm from "@/pages/beneficiary-form";
import CurrencyExchange from "@/pages/currency-exchange";
import TransferReview from "@/pages/transfer-review";
import TransferProcessing from "@/pages/transfer-processing";
import TransferSuccess from "@/pages/transfer-success";
import TransferTracking from "@/pages/transfer-tracking";

function Router() {
  return (
    <Switch>
      <Route path="/" component={TransferType} />
      <Route path="/transfer-type" component={TransferType} />
      <Route path="/beneficiary" component={BeneficiaryForm} />
      <Route path="/currency" component={CurrencyExchange} />
      <Route path="/review" component={TransferReview} />
      <Route path="/processing" component={TransferProcessing} />
      <Route path="/success" component={TransferSuccess} />
      <Route path="/tracking" component={TransferTracking} />
      <Route component={NotFound} />
    </Switch>
  );
}

function App() {
  return (
    <QueryClientProvider client={queryClient}>
      <TooltipProvider>
        <Toaster />
        <Router />
      </TooltipProvider>
    </QueryClientProvider>
  );
}

export default App;
