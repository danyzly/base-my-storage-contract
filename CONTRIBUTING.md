# Contribuir a este repositorio

¡Gracias por tu interés! Este repo contiene un contrato simple (`MyStorage`) desplegado y verificado en **Base Mainnet**.  
Se aceptan mejoras de documentación, ejemplos, traducciones y cambios pequeños en el contrato.

## 🎯 Formas de contribuir
- Mejorar el **README** o traducirlo.
- Subir **capturas** o ejemplos de interacción.
- Proponer **mejoras** en el contrato (por ej. `resetNumber()`).
- Reportar **bugs** o abrir **feature requests** en *Issues*.
- Abrir **Pull Requests (PRs)** con cambios pequeños y bien explicados.

## 🧩 Requisitos mínimos
- Solidity `0.8.24`
- SPDX License: `MIT`
- EVM: **Cancun** (en verificación)
- Optimizer: **enabled**, `runs: 200`
- Red de destino: **Base Mainnet (chainId 8453)**

## 🪜 Flujo de trabajo (PR paso a paso)
1. **Fork** de este repo y cloná tu fork.
2. Crea una rama según el tipo de cambio:
   - `feature/<nombre>` (nueva funcionalidad)
   - `fix/<nombre>` (arreglo)
   - `docs/<nombre>` (documentación)
3. Haz tus cambios y **actualiza el README** si corresponde.
4. Si cambiaste el contrato:
   - actualiza **`artifacts/MyStorage.abi.json`** y **`artifacts/MyStorage.bytecode.json`**,
   - describe los cambios en el PR.
5. **Commit** con mensajes claros (convención sugerida):
   - `feat: …`, `fix: …`, `docs: …`, `chore: …`, `refactor: …`
6. **Push** a tu fork y abre un **Pull Request** hacia `main`.

## ✅ Criterios de aceptación
- Cambios pequeños, atómicos y bien explicados.
- Documentación acorde (README/imagenes/artefactos).
- Sin breaking changes en `MyStorage` salvo consenso.

## 🔐 Seguridad
Este repo es educativo. **No lo uses en producción** ni envíes fondos significativos al contrato.  
No compartas claves privadas.

## 🤝 Código de conducta
Sé amable y profesional. Colaboramos con respeto.
