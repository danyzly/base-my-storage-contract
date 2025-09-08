[![GitHub release](https://img.shields.io/github/release/danzyly/base-my-storage-contract.svg?style=for-the-badge)](https://github.com/danzyly/base-my-storage-contract/releases/latest)

# MyStorage – Base Mainnet

Contrato mínimo en Solidity para guardar un número en la blockchain.  
Desplegado y verificado en **Base Mainnet** usando **Remix** + **Blockscout**.

- **Red:** Base (chainId `8453`)
- **Dirección del contrato:** `0xA8888Dd2B317ca5e478401C723Ac0062A03e9A81`
- **Explorer (Blockscout):** https://base.blockscout.com/address/0xA8888Dd2B317ca5e478401C723Ac0062A03e9A81?tab=contract
- **Compilador:** Solidity `0.8.24` · **EVM:** Cancun
- **Optimization:** `enabled`, runs `200`
- **Licencia:** MIT

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

