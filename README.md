# Echowarden

---

## One line summary
Echowarden verifies Base Sepolia visibility end-to-end by reading wallet balances, chain signals, and runtime bytecode status, then printing and exporting Basescan-ready references.

Built for Base.

---

## What you get
- A console inspector script for quick human checks
- A report generator script that writes a structured JSON snapshot
- A small set of target addresses that are scanned for deployed bytecode
- Deterministic Basescan links for addresses, blocks, and contract code pages

---

## Guardrails
- No transactions are broadcast
- No messages are signed
- No private keys are required
- No onchain state is written

---

## How the scripts cooperate
1) Both scripts load Base Sepolia constants (chainId 84532 and Basescan root)  
2) Coinbase Wallet SDK is used only for address discovery  
3) viem public client performs all reads (balances, blocks, gas, bytecode)  
4) Echowarden.mjs prints a readable console trace  
5) ReportPulse.mjs writes reports/latest.json and appends logs/run.log  

---

## Base Sepolia settings
- network: Base Sepolia  
- chainId (decimal): 84532  
- explorer: https://sepolia.basescan.org  

---

## Project map
- README.md  
- app/Echowarden.mjs  
- app/ReportPulse.mjs  
- package.json  
- contracts/AddressTagbook.sol  
- contracts/RuntimeBytecodeLens.sol  
- config/base-sepolia.json  
- inputs/targets.json  
- reports/latest.json  
- docs/notes.md  
- logs/run.log  

---

## License
BSD 2-Clause License

---

## Testnet Deployment (Base Sepolia)
the following deployments are used only as validation references.

network: base sepolia  
chainId (decimal): 84532  
explorer: https://sepolia.basescan.org  

AddressTagbook.sol address:  
0x2cA9Ff5E8D2b7aC1E3f6A0b9C4D1e7F8A3B2C1D0  

deployment and verification:
- https://sepolia.basescan.org/address/0x2cA9Ff5E8D2b7aC1E3f6A0b9C4D1e7F8A3B2C1D0
- https://sepolia.basescan.org/0x2cA9Ff5E8D2b7aC1E3f6A0b9C4D1e7F8A3B2C1D0/0#code  

RuntimeBytecodeLens.sol address:  
0x9B7e2A1c4D6f0E3a8C2b1F5D7E9a0C1b2D3E4F5A  

deployment and verification:
- https://sepolia.basescan.org/address/0x9B7e2A1c4D6f0E3a8C2b1F5D7E9a0C1b2D3E4F5A
- https://sepolia.basescan.org/0x9B7e2A1c4D6f0E3a8C2b1F5D7E9a0C1b2D3E4F5A/0#code  

---

## Author Contacts
- GitHub: https://github.com/imagoes-pushpin

- Email: imagoes-pushpin0b@icloud.com
