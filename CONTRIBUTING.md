# Contribuyendo a Base My Storage Contract

¡Gracias por tu interés en contribuir! Este repositorio contiene un contrato inteligente **SimpleStorage** desplegado y verificado en **Base Mainnet**. A continuación encontrarás las pautas para colaborar de manera clara, ordenada y segura.

## 🧭 Flujo de contribución
1. Crea un issue describiendo el cambio o bug (si aplica).
2. Haz un fork del repositorio y crea una rama a partir de `main`.
3. Realiza cambios siguiendo el estilo de código y las convenciones de commit.
4. Asegúrate de pasar compilación, pruebas y validaciones.
5. Abre un Pull Request (PR) contra `main` y completa la checklist.

## 🌱 Requisitos
- Node.js LTS (18+ recomendado)  
- npm o pnpm  
- Wallet (ej. MetaMask) para probar en Base  
- (Opcional) Hardhat o Foundry para pruebas locales  

Instalación local:
```bash
git clone https://github.com/danyzly/base-my-storage-contract.git
cd base-my-storage-contract
npm install

---

## 🧩 Estructura básica

contracts/ – Código Solidity del contrato

artifacts/ – ABI y bytecode exportados

images/ – Imágenes usadas en el README

README.md – Documentación principal

SECURITY.md – Política de seguridad y divulgación responsable

---

## 🧪 Pruebas y compilación

Puedes usar Remix directamente o un entorno local.

Remix (rápido):

Importa el archivo del contrato desde contracts/.

Compila con solc 0.8.24 (EVM: Cancun; optimizer on, runs 200).

Interactúa en “Deploy & Run”.

Local (ejemplo con Hardhat):

# si agregas hardhat.config.*
npx hardhat compile
npx hardhat test

---

## 🧷 Estilo de código

Solidity

Versión: ^0.8.24

Optimizer activado, runs = 200

Usa comentarios natspec en funciones públicas si aplica

Seguridad primero: validaciones de entrada y eventos en cambios de estado

JavaScript/TypeScript

Usa const/let, async/await y manejo explícito de errores

Importa ethers v6: import { ethers } from "ethers";

Formato consistente (Prettier/EditorConfig si se agregan más adelante)

---

## ✍️ Convenciones de branches y commits

Branches

feat/nueva-funcionalidad
fix/bug-descripcion-corta
docs/ajuste-readme
chore/mantenimiento

Commits (Conventional Commits)

feat: agrega evento NumberUpdated al setNumber
fix: corrige tipo uint en getNumber
docs: aclara pasos de interacción en README
refactor: simplifica lógica de setNumber
test: añade pruebas básicas
chore: actualiza dependencias

Encabezado ≤ 50 caracteres; cuerpo opcional para más detalles.

---

## ✅ Checklist de PR

 El PR referencia un issue (si existe)

 Descripción clara del cambio

 Compila sin errores (Remix/Hardhat)

 Cambios de contrato explicados (riesgos/compatibilidad)

 Actualizado README.md si corresponde

 Incluye capturas o logs si aplica

 No incluye secretos/keys ni datos sensibles

---

## 🔐 Seguridad

No publiques vulnerabilidades en issues o PR públicos

Reporta de forma privada vía GitHub Security Advisories:
👉 https://github.com/danyzly/base-my-storage-contract/security/advisories/new

Incluye: descripción, impacto, prueba de concepto, dirección del contrato y red, versión (tag o commit)

Política completa: ver SECURITY.md

---

## 📝 Licencia y crédito

Al contribuir, aceptas que tu contribución se licencie bajo MIT.
Si tu cambio reutiliza trabajo de otra fuente, incluye la referencia.

---

## 🙌 Gracias

Apreciamos cada sugerencia, issue y PR. ¡Tu ayuda hace que este proyecto sea mejor!
