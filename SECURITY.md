# Política de Seguridad

Gracias por ayudarte a mantener este proyecto seguro. Esta política describe **cómo reportar vulnerabilidades**, el **alcance**, y nuestros **tiempos de respuesta**.

---

## 🧭 Alcance

- Contratos y scripts contenidos en este repositorio.
- Despliegue de referencia en **Base mainnet**:
  - Address: `0xA8888Dd2B317ca5e478401C723Ac0062A03e9A81`
  - Explorer: https://base.blockscout.com/address/0xA8888Dd2B317ca5e478401C723Ac0062A03e9A81?tab=contract

Fuera de alcance: dependencias de terceros no modificadas, servicios de hosting externos, wallets de usuarios.

---

## 📣 Cómo reportar

Por favor, **no divulgues públicamente**. Envíanos un aviso privado a través de **GitHub Security Advisories**:

- URL (privada): https://github.com/danyzly/base-my-storage-contract/security/advisories/new

Incluye:
- Descripción, **impacto** y severidad estimada.
- **Prueba de Concepto** (pasos, script, o txs).
- Versión/tag/commit afectado.
- Red y contrato afectados (si aplica).

---

## ⏱️ Tiempos de respuesta (SLA objetivo)

- **Acuse de recibo**: ≤ **48 h**.
- **Triaging / Confirmación**: ≤ **72 h**.
- **Mitigación/Parche**: **7–14 días** (según severidad/alcance).

Si la corrección requiere coordinación (ej. migraciones), podremos ajustar plazos y te mantendremos informado.

---

## ✅ Buenas prácticas al investigar (Safe Harbor)

- Atacar **solo** contratos de prueba o tus propios despliegues.
- **No** extraer/transferir fondos sin autorización.
- **No** interrumpir el servicio de forma intencional (DoS).
- **No** acceder a datos personales ni violar leyes/ToS.
- Minimiza el impacto; respeta límites de gas y coste.

---

## 🧪 Severidad (guía)

- **Crítica**: pérdida de fondos/propiedad o toma de control.
- **Alta**: escalada de privilegios, escritura indebida.
- **Media**: lectura indebida, bypass de validaciones.
- **Baja**: issues menores de seguridad o hardening.

Usamos esta guía de forma orientativa y podemos complementarla con CVSS cuando aplique.

---

## 🎁 Recompensas

Actualmente **no** ofrecemos programa formal de recompensas. Podemos reconocer la colaboración en el changelog/notas de versión si lo deseas.

---

## 📦 Versiones soportadas

Enfoque en la última versión publicada (**v1.0.0**) y `main`. Las ramas antiguas podrían no recibir parches.

---

## 🔏 Divulgación responsable

Tras corregir/mitigar, publicaremos notas de seguridad y/o un advisory con crédito (si lo autorizas).
