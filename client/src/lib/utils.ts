import { type ClassValue, clsx } from "clsx";
import { twMerge } from "tailwind-merge";

export function cn(...inputs: ClassValue[]) {
  return twMerge(clsx(inputs));
}

export function formatCurrency(amount: number, currency: string = 'USD'): string {
  return new Intl.NumberFormat('en-US', {
    style: 'currency',
    currency: currency,
    minimumFractionDigits: 2,
    maximumFractionDigits: 2,
  }).format(amount);
}

export function formatDate(date: Date | string): string {
  const d = new Date(date);
  return d.toLocaleDateString('en-US', {
    month: 'short',
    day: 'numeric',
    year: 'numeric'
  });
}

export function formatDateTime(date: Date | string): string {
  const d = new Date(date);
  return d.toLocaleDateString('en-US', {
    month: 'short',
    day: 'numeric',
    year: 'numeric'
  }) + ' ' + d.toLocaleTimeString('en-US', {
    hour: 'numeric',
    minute: '2-digit'
  });
}

export function formatAccountNumber(accountNumber: string): string {
  if (accountNumber.length < 4) return accountNumber;
  return '****' + accountNumber.slice(-4);
}

export function generateConfirmationNumber(): string {
  return Math.floor(Math.random() * 9000000 + 1000000).toString();
}

export function getCurrencySymbol(currency: string): string {
  const symbols: Record<string, string> = {
    'USD': '$',
    'PKR': '₨',
    'INR': '₹',
    'GBP': '£',
    'CAD': 'C$',
    'MXN': '$',
    'EUR': '€'
  };
  return symbols[currency] || currency;
}

export function getCountryName(countryCode: string): string {
  const countries: Record<string, string> = {
    'US': 'United States',
    'PK': 'Pakistan',
    'IN': 'India',
    'UK': 'United Kingdom',
    'CA': 'Canada',
    'MX': 'Mexico'
  };
  return countries[countryCode] || countryCode;
}
