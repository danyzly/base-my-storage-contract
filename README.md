# Base My Storage Contract

![Base – Smart Contract Verified on Base Mainnet](images/banner.png)

[![GitHub release](https://img.shields.io/github/v/release/danyzly/base-my-storage-contract)](https://github.com/danyzly/base-my-storage-contract/releases)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](./LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](./CONTRIBUTING.md)
[![Verified on Blockscout](https://img.shields.io/badge/Verified-Blockscout-1f6feb.svg)](https://base.blockscout.com/address/0xA8888Dd2B317ca5e478401C723Ac0062A03e9A81?tab=contract)

<p align="center">
  <a href="https://base.blockscout.com/address/0xA8888Dd2B317ca5e478401C723Ac0062A03e9A81?tab=contract">Explorer</a> ·
  <a href="https://base.blockscout.com/address/0xA8888Dd2B317ca5e478401C723Ac0062A03e9A81?tab=read_contract">Read</a> ·
  <a href="https://base.blockscout.com/address/0xA8888Dd2B317ca5e478401C723Ac0062A03e9A81?tab=write_contract">Write</a>
</p>

Contrato **SimpleStorage** escrito en Solidity y desplegado en **Base Mainnet**, con verificación en **Blockscout**.  
Este proyecto sirve como ejemplo educativo para desarrolladores que quieran iniciarse en el ecosistema Base y EVM.

---

## 📚 Tabla de Contenidos
- [📇 Contrato desplegado](#-contrato-desplegado)
- [📖 ¿Qué hace este contrato?](#-qué-hace-este-contrato)
- [🛠️ Artifacts](#️-artifacts)
- [🖼️ Screenshots](#️-screenshots)
- [🚀 Cómo interactuar](#-cómo-interactuar)
- [💻 Ejemplo con Ethers.js](#-ejemplo-con-ethersjs)
- [📦 Instalación local](#-instalación-local)
- [📜 Licencia](#-licencia)
- [🙌 Contribuciones](#-contribuciones)
- [🔒 Seguridad](#-seguridad)

---

## 📇 Contrato desplegado

| Campo                 | Valor |
|-----------------------|-------|
| Red                   | Base (chainId `8453`) |
| Dirección             | `0xA8888Dd2B317ca5e478401C723Ac0062A03e9A81` |
| Explorer              | [Blockscout](https://base.blockscout.com/address/0xA8888Dd2B317ca5e478401C723Ac0062A03e9A81?tab=contract) |
| Compilador (Solidity) | 0.8.24 (EVM: Cancun, Optimizer enabled, runs 200) |
| Licencia              | MIT |

---

## 📖 ¿Qué hace este contrato?

El contrato implementa un **almacenamiento simple de números** en la blockchain.  
Permite dos operaciones básicas:

- `setNumber(uint256 newNumber)` → guarda un número en la blockchain.  
- `getNumber()` → devuelve el número almacenado.  

---

## 🛠️ Artifacts

- [MyStorage.abi.json](./artifacts/MyStorage.abi.json)  
- [MyStorage.bytecode.json](./artifacts/MyStorage.bytecode.json)  

---

## 🖼️ Screenshots

- [Despliegue en Remix](./images/read-contract.png.jpeg)  
- [Verificación en Blockscout](./images/verification-blockscout.png.jpeg)  

---

## 🚀 Cómo interactuar

1. Abre el contrato en [Blockscout](https://base.blockscout.com/address/0xA8888Dd2B317ca5e478401C723Ac0062A03e9A81?tab=contract).  
2. Conecta tu wallet (ej: MetaMask).  
3. Usa la pestaña **Read Contract** para leer el número almacenado.  
4. Usa la pestaña **Write Contract** para actualizarlo con `setNumber`.  

---

## 💻 Ejemplo con Ethers.js

```js
import { ethers } from "ethers";
import abi from "./artifacts/MyStorage.abi.json";

const provider = new ethers.JsonRpcProvider("https://mainnet.base.org");
const signer = await provider.getSigner();

const contract = new ethers.Contract(
  "0xA8888Dd2B317ca5e478401C723Ac0062A03e9A81",
  abi,
  signer
);

// Guardar un número
await contract.setNumber(42);

// Leer el número
const num = await contract.getNumber();
console.log("Número guardado:", num.toString());

Tip (solo navegador / MetaMask, sin Node):

<script type="module">
  import { ethers } from "https://esm.sh/ethers@6";
  const abi = await (await fetch("./artifacts/MyStorage.abi.json")).json();
  const provider = new ethers.BrowserProvider(window.ethereum);
  const signer = await provider.getSigner();
  const c = new ethers.Contract("0xA8888Dd2B317ca5e478401C723Ac0062A03e9A81", abi, signer);
  console.log("getNumber:", (await c.getNumber()).toString());
</script>

```

## 📦 Instalación local

git clone https://github.com/danyzly/base-my-storage-contract.git
cd base-my-storage-contract
npm install

Puedes compilar y desplegar el contrato usando Remix o configurar un entorno con Hardhat/Foundry.

---

## 📜 Licencia

Este proyecto está bajo la licencia MIT.
Consulta el archivo LICENSE
 para más detalles.

---

## 🙌 Contribuciones

¡Las contribuciones son bienvenidas!
Por favor revisa la guía en CONTRIBUTING.md
 antes de enviar un pull request.

---

## 🔒 Seguridad

## 🔒 Seguridad

Si encuentras una vulnerabilidad o comportamiento inseguro, **no abras un issue público**.  
Por favor sigue este proceso de reporte responsable:

1) **No** abras un issue/PR público.
2) Prepara un reporte privado con:
   - Descripción y **impacto** (fondos a riesgo, DoS, lectura/escritura indebida, etc.).
   - **Prueba de concepto** (pasos, script, o tx hash).
   - **Dirección del contrato** y **red** (Base mainnet), versión (tag o commit).
3) Envíalo de forma **privada** desde GitHub:  
   👉 **Security Advisories**: https://github.com/danyzly/base-my-storage-contract/security/advisories/new

Política completa, SLA y alcance: consulta **[SECURITY.md](./SECURITY.md)**.



