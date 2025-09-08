[![GitHub release (latest by date)](https://img.shields.io/github/v/release/danyzly/base-my-storage-contract)](https://github.com/danyzly/base-my-storage-contract/releases/latest)

# MyStorage – Base Mainnet

[![GitHub release](https://img.shields.io/github/v/release/danyzly/base-my-storage-contract?sort=semver)](https://github.com/danyzly/base-my-storage-contract/releases)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](./LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](./CONTRIBUTING.md)
[![Open in Remix](https://img.shields.io/badge/Open%20in-Remix-orange)](https://remix.ethereum.org/#url=https://raw.githubusercontent.com/danyzly/base-my-storage-contract/main/contracts/MyStorage.sol)

Contrato mínimo en Solidity para guardar un número en la blockchain.  
Desplegado y verificado en **Base Mainnet** usando **Remix** + **Blockscout**.

### 📇 Contrato desplegado

| Campo                 | Valor |
|-----------------------|-------|
| Red                   | Base (chainId `8453`) |
| Dirección             | `0xA8888Dd2B317ca5e478401C723Ac0062A03e9A81` |
| Explorer              | [Blockscout](https://base.blockscout.com/address/0xA8888Dd2B317ca5e478401C723Ac0062A03e9A81?tab=contract) |
| Compilador (Solidity) | 0.8.24 (EVM: Cancun, Optimizer: enabled, runs 200) |
| Licencia              | MIT |

---

## ✨ ¿Qué hace este contrato?
- `setNumber(uint256 newNumber)`: guarda un número y emite un evento `NumberUpdated`.
- `getNumber() → uint256`: devuelve el número guardado.

---

## 📁 Estructura del repo

---

## 📂 Artifacts

Estos archivos permiten a otros interactuar con el contrato fácilmente:

- [`artifacts/MyStorage.abi.json`](artifacts/MyStorage.abi.json): contiene la **ABI**.  
- [`artifacts/MyStorage.bytecode.json`](artifacts/MyStorage.bytecode.json): contiene el **Bytecode**.  

---

## 📸 Screenshots

- **Deploy en Remix**  
  ![Remix Deploy](images/deploy.png)

- **Verificación en Blockscout**  
  ![Blockscout Verification](images/blockscout.png)

---

## 🚀 Cómo interactuar

1. Entra en [Blockscout](https://base.blockscout.com/address/0xA8888Dd2B317ca5e478401C723Ac0062A03e9A81?tab=contract).  
2. Conecta tu wallet.  
3. Usa las pestañas **Read / Write Contract** para llamar las funciones:  
   - `getNumber` → devuelve el número guardado.  
   - `setNumber` → guarda un nuevo número y emite un evento.  

---

## 🚀 Quickstart (Ethers.js)

```

bash
# en un proyecto Node (fuera de este repo)
npm i ethers
// quickstart.js
import { ethers } from "ethers";

// ABI: puedes copiarla desde artifacts/MyStorage.abi.json o traerla por URL:
// https://raw.githubusercontent.com/danyzly/base-my-storage-contract/main/artifacts/MyStorage.abi.json
const abi = [
  {
    "anonymous": false,
    "inputs":[{"indexed":true,"internalType":"address","name":"user","type":"address"},{"indexed":false,"internalType":"uint256","name":"newNumber","type":"uint256"}],
    "name":"NumberUpdated","type":"event"
  },
  {"inputs":[{"internalType":"uint256","name":"newNumber","type":"uint256"}],"name":"setNumber","outputs":[],"stateMutability":"nonpayable","type":"function"},
  {"inputs":[],"name":"getNumber","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"}
];

const provider = new ethers.JsonRpcProvider("https://mainnet.base.org");
const wallet = new ethers.Wallet(process.env.PRIVATE_KEY, provider);

// Dirección desplegada en Base mainnet:
const address = "0xA8888Dd2B317ca5e478401C723Ac0062A03e9A81";
const contract = new ethers.Contract(address, abi, wallet);

(async () => {
  // Guardar número
  const tx = await contract.setNumber(123);
  console.log("tx sent:", tx.hash);
  await tx.wait();

  // Leer número
  const num = await contract.getNumber();
  console.log("Número guardado:", num.toString());
})();

# Ejecutar (usa una PRIVATE_KEY con algo de ETH en Base)
node quickstart.js

> **Commit message sugerido:**  
`docs(readme): agregar sección Quickstart (Ethers.js)`

---

# 4) Links “raw” a los artefactos (ABI/Bytecode)

**Qué hace:** facilita copiar/consumir ABI/Bytecode sin navegar por GitHub.  
**Dónde:** en tu sección **Artifacts** debajo de cada ítem añade el link “raw”.

**Pega esto (ajustando tu bloque “Artifacts”):**
```md
## 📦 Artifacts

- **ABI:** [`artifacts/MyStorage.abi.json`](artifacts/MyStorage.abi.json) • raw:  
  `https://raw.githubusercontent.com/danyzly/base-my-storage-contract/main/artifacts/MyStorage.abi.json`

- **Bytecode:** [`artifacts/MyStorage.bytecode.json`](artifacts/MyStorage.bytecode.json) • raw:  
  `https://raw.githubusercontent.com/danyzly/base-my-storage-contract/main/artifacts/MyStorage.bytecode.json`
