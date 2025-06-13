import { useState } from "react";
import { useForm } from "react-hook-form";
import { zodResolver } from "@hookform/resolvers/zod";
import { z } from "zod";
import { useLocation } from "wouter";
import { useMutation } from "@tanstack/react-query";
import { MobileHeader } from "@/components/mobile-header";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Textarea } from "@/components/ui/textarea";
import { Label } from "@/components/ui/label";
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select";
import { apiRequest } from "@/lib/queryClient";
import { useToast } from "@/hooks/use-toast";

const beneficiarySchema = z.object({
  recipientName: z.string().min(1, "Recipient name is required"),
  recipientAddress: z.string().min(1, "Address is required"),
  recipientCity: z.string().min(1, "City is required"),
  recipientState: z.string().optional(),
  recipientZip: z.string().optional(),
  recipientCountry: z.string().min(1, "Country is required"),
  bankName: z.string().min(1, "Bank name is required"),
  routingNumber: z.string().min(1, "Routing number is required"),
  accountNumber: z.string().min(1, "Account number is required"),
  swiftCode: z.string().optional(),
});

type BeneficiaryForm = z.infer<typeof beneficiarySchema>;

export default function BeneficiaryForm() {
  const [, setLocation] = useLocation();
  const { toast } = useToast();
  const transferType = localStorage.getItem('transferType') || 'domestic';

  const form = useForm<BeneficiaryForm>({
    resolver: zodResolver(beneficiarySchema),
    defaultValues: {
      recipientName: "",
      recipientAddress: "",
      recipientCity: "",
      recipientState: "",
      recipientZip: "",
      recipientCountry: "",
      bankName: "",
      routingNumber: "",
      accountNumber: "",
      swiftCode: "",
    },
  });

  const createBeneficiaryMutation = useMutation({
    mutationFn: async (data: BeneficiaryForm) => {
      const response = await apiRequest('POST', '/api/beneficiaries', data);
      return response.json();
    },
    onSuccess: (beneficiary) => {
      localStorage.setItem('beneficiaryId', beneficiary.id.toString());
      localStorage.setItem('beneficiaryData', JSON.stringify(beneficiary));
      
      if (transferType === 'international') {
        setLocation('/currency');
      } else {
        setLocation('/amount');
      }
    },
    onError: (error) => {
      toast({
        title: "Error",
        description: "Failed to save beneficiary details. Please try again.",
        variant: "destructive",
      });
    },
  });

  const onSubmit = (data: BeneficiaryForm) => {
    createBeneficiaryMutation.mutate(data);
  };

  const selectedCountry = form.watch("recipientCountry");
  const isInternational = transferType === 'international';

  return (
    <div className="max-w-sm mx-auto bg-white min-h-screen">
      <MobileHeader 
        title="Beneficiary Details" 
        onBack={() => setLocation('/transfer-type')}
      />

      <form onSubmit={form.handleSubmit(onSubmit)} className="p-6 pb-20 fade-in">
        <div className="mb-6">
          <h2 className="text-xl font-semibold text-gray-800 mb-2">Recipient Information</h2>
          <p className="text-gray-600">Enter the details of the person or business receiving the wire.</p>
        </div>

        <div className="space-y-6">
          <div>
            <Label htmlFor="recipientName">Full Name *</Label>
            <Input
              id="recipientName"
              placeholder="Enter recipient's full legal name"
              {...form.register("recipientName")}
              className="mt-2"
            />
            {form.formState.errors.recipientName && (
              <p className="text-sm text-red-600 mt-1">{form.formState.errors.recipientName.message}</p>
            )}
          </div>

          <div>
            <Label htmlFor="recipientAddress">Address *</Label>
            <Textarea
              id="recipientAddress"
              placeholder="Enter complete address"
              rows={3}
              {...form.register("recipientAddress")}
              className="mt-2"
            />
            {form.formState.errors.recipientAddress && (
              <p className="text-sm text-red-600 mt-1">{form.formState.errors.recipientAddress.message}</p>
            )}
          </div>

          <div className="grid grid-cols-2 gap-4">
            <div>
              <Label htmlFor="recipientCity">City *</Label>
              <Input
                id="recipientCity"
                placeholder="City"
                {...form.register("recipientCity")}
                className="mt-2"
              />
              {form.formState.errors.recipientCity && (
                <p className="text-sm text-red-600 mt-1">{form.formState.errors.recipientCity.message}</p>
              )}
            </div>
            <div>
              <Label htmlFor="recipientState">State/Province</Label>
              <Input
                id="recipientState"
                placeholder="State"
                {...form.register("recipientState")}
                className="mt-2"
              />
            </div>
          </div>

          <div className="grid grid-cols-2 gap-4">
            <div>
              <Label htmlFor="recipientZip">ZIP/Postal Code</Label>
              <Input
                id="recipientZip"
                placeholder="ZIP Code"
                {...form.register("recipientZip")}
                className="mt-2"
              />
            </div>
            <div>
              <Label htmlFor="recipientCountry">Country *</Label>
              <Select onValueChange={(value) => form.setValue("recipientCountry", value)}>
                <SelectTrigger className="mt-2">
                  <SelectValue placeholder="Select Country" />
                </SelectTrigger>
                <SelectContent>
                  <SelectItem value="US">United States</SelectItem>
                  <SelectItem value="CA">Canada</SelectItem>
                  <SelectItem value="UK">United Kingdom</SelectItem>
                  <SelectItem value="PK">Pakistan</SelectItem>
                  <SelectItem value="IN">India</SelectItem>
                  <SelectItem value="MX">Mexico</SelectItem>
                </SelectContent>
              </Select>
              {form.formState.errors.recipientCountry && (
                <p className="text-sm text-red-600 mt-1">{form.formState.errors.recipientCountry.message}</p>
              )}
            </div>
          </div>

          <div className="border-t pt-6">
            <h3 className="text-lg font-semibold text-gray-800 mb-4">Bank Information</h3>
            
            <div className="space-y-4">
              <div>
                <Label htmlFor="bankName">Bank Name *</Label>
                <Input
                  id="bankName"
                  placeholder="Enter bank name"
                  {...form.register("bankName")}
                  className="mt-2"
                />
                {form.formState.errors.bankName && (
                  <p className="text-sm text-red-600 mt-1">{form.formState.errors.bankName.message}</p>
                )}
              </div>

              <div>
                <Label htmlFor="routingNumber">
                  {isInternational ? "SWIFT/BIC Code" : "Routing Number"} *
                </Label>
                <Input
                  id="routingNumber"
                  placeholder={isInternational ? "Enter SWIFT/BIC code" : "9-digit routing number"}
                  {...form.register("routingNumber")}
                  className="mt-2"
                />
                {form.formState.errors.routingNumber && (
                  <p className="text-sm text-red-600 mt-1">{form.formState.errors.routingNumber.message}</p>
                )}
              </div>

              <div>
                <Label htmlFor="accountNumber">Account Number *</Label>
                <Input
                  id="accountNumber"
                  placeholder="Enter account number"
                  {...form.register("accountNumber")}
                  className="mt-2"
                />
                {form.formState.errors.accountNumber && (
                  <p className="text-sm text-red-600 mt-1">{form.formState.errors.accountNumber.message}</p>
                )}
              </div>

              {isInternational && (
                <div>
                  <Label htmlFor="swiftCode">Additional SWIFT Code</Label>
                  <Input
                    id="swiftCode"
                    placeholder="Enter additional SWIFT code if required"
                    {...form.register("swiftCode")}
                    className="mt-2"
                  />
                </div>
              )}
            </div>
          </div>
        </div>
      </form>

      <div className="fixed bottom-0 left-0 right-0 max-w-sm mx-auto bg-white border-t border-gray-200 p-4">
        <Button 
          type="submit" 
          className="w-full boa-blue text-white hover:opacity-90"
          disabled={createBeneficiaryMutation.isPending}
          onClick={form.handleSubmit(onSubmit)}
        >
          {createBeneficiaryMutation.isPending ? "Saving..." : "Continue"}
        </Button>
      </div>
    </div>
  );
}
