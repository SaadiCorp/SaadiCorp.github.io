export interface ExchangeRate {
  fromCurrency: string;
  toCurrency: string;
  rate: number;
  lastUpdated: Date;
}

export const getCurrencyFromCountry = (countryCode: string): string => {
  const currencyMap: Record<string, string> = {
    'US': 'USD',
    'PK': 'PKR',
    'IN': 'INR',
    'UK': 'GBP',
    'CA': 'CAD',
    'MX': 'MXN'
  };
  return currencyMap[countryCode] || 'USD';
};

export const getCurrencySymbol = (currency: string): string => {
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
};

export const calculateExchange = (amount: number, rate: number): number => {
  return Math.round(amount * rate * 100) / 100;
};
