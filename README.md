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
