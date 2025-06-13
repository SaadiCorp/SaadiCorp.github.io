import type { Express } from "express";
import { createServer, type Server } from "http";
import { storage } from "./storage";
import { insertBeneficiarySchema, insertWireTransferSchema } from "@shared/schema";
import { z } from "zod";

export async function registerRoutes(app: Express): Promise<Server> {
  
  // Create beneficiary
  app.post("/api/beneficiaries", async (req, res) => {
    try {
      const beneficiaryData = insertBeneficiarySchema.parse(req.body);
      const beneficiary = await storage.createBeneficiary(beneficiaryData);
      res.json(beneficiary);
    } catch (error) {
      if (error instanceof z.ZodError) {
        res.status(400).json({ error: "Invalid beneficiary data", details: error.errors });
      } else {
        res.status(500).json({ error: "Failed to create beneficiary" });
      }
    }
  });

  // Get beneficiary by ID
  app.get("/api/beneficiaries/:id", async (req, res) => {
    try {
      const id = parseInt(req.params.id);
      const beneficiary = await storage.getBeneficiary(id);
      
      if (!beneficiary) {
        return res.status(404).json({ error: "Beneficiary not found" });
      }
      
      res.json(beneficiary);
    } catch (error) {
      res.status(500).json({ error: "Failed to fetch beneficiary" });
    }
  });

  // Create wire transfer
  app.post("/api/wire-transfers", async (req, res) => {
    try {
      const transferData = insertWireTransferSchema.parse(req.body);
      const transfer = await storage.createWireTransfer(transferData);
      res.json(transfer);
    } catch (error) {
      if (error instanceof z.ZodError) {
        res.status(400).json({ error: "Invalid transfer data", details: error.errors });
      } else {
        res.status(500).json({ error: "Failed to create wire transfer" });
      }
    }
  });

  // Get wire transfer by ID
  app.get("/api/wire-transfers/:id", async (req, res) => {
    try {
      const id = parseInt(req.params.id);
      const transfer = await storage.getWireTransfer(id);
      
      if (!transfer) {
        return res.status(404).json({ error: "Wire transfer not found" });
      }
      
      res.json(transfer);
    } catch (error) {
      res.status(500).json({ error: "Failed to fetch wire transfer" });
    }
  });

  // Get wire transfer by confirmation number
  app.get("/api/wire-transfers/confirmation/:number", async (req, res) => {
    try {
      const confirmationNumber = req.params.number;
      const transfer = await storage.getWireTransferByConfirmation(confirmationNumber);
      
      if (!transfer) {
        return res.status(404).json({ error: "Wire transfer not found" });
      }
      
      res.json(transfer);
    } catch (error) {
      res.status(500).json({ error: "Failed to fetch wire transfer" });
    }
  });

  // Get transfer with beneficiary details
  app.get("/api/wire-transfers/:id/details", async (req, res) => {
    try {
      const id = parseInt(req.params.id);
      const transferDetails = await storage.getTransferWithBeneficiary(id);
      
      if (!transferDetails) {
        return res.status(404).json({ error: "Transfer details not found" });
      }
      
      res.json(transferDetails);
    } catch (error) {
      res.status(500).json({ error: "Failed to fetch transfer details" });
    }
  });

  // Get transfer status
  app.get("/api/wire-transfers/:id/status", async (req, res) => {
    try {
      const id = parseInt(req.params.id);
      const statuses = await storage.getTransferStatusByTransferId(id);
      res.json(statuses);
    } catch (error) {
      res.status(500).json({ error: "Failed to fetch transfer status" });
    }
  });

  // Get current exchange rates
  app.get("/api/exchange-rates/:fromCurrency/:toCurrency", async (req, res) => {
    try {
      const { fromCurrency, toCurrency } = req.params;
      
      // Mock exchange rates for demo purposes
      const rates: Record<string, number> = {
        'USD_PKR': 278.50,
        'USD_INR': 83.20,
        'USD_GBP': 0.79,
        'USD_CAD': 1.35,
        'USD_MXN': 17.85,
        'USD_EUR': 0.92
      };
      
      const rateKey = `${fromCurrency}_${toCurrency}`;
      const rate = rates[rateKey];
      
      if (!rate) {
        return res.status(404).json({ error: "Exchange rate not found" });
      }
      
      res.json({
        fromCurrency,
        toCurrency,
        rate,
        lastUpdated: new Date()
      });
    } catch (error) {
      res.status(500).json({ error: "Failed to fetch exchange rate" });
    }
  });

  const httpServer = createServer(app);
  return httpServer;
}
