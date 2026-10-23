# Workshop: Centralita VoIP con Asterisk en Hardware Dedicado

Este repositorio contiene todos los materiales, scripts y configuraciones necesarias para implementar una central telefónica IP (PBX) de bajo costo utilizando **Asterisk**.

El taller ofrece **dos alternativas de implementación** para que puedas elegir la que mejor se adapte a tus recursos.

---

## 📌 Alternativas de Implementación

### Opción 1: Raspberry Pi (Hardware Físico)
- **Carpeta:** `rpi_opcion_1/`
- **Ideal para:** Quienes tengan una Raspberry Pi (3B+ o superior) y quieran un servidor real de bajo consumo (24/7).
- **Nota:** La compilación de Asterisk en la Raspberry puede tardar entre 40 y 60 minutos (usa `make -j1` para evitar problemas de memoria).

### Opción 2: Máquina Virtual (VirtualBox en PC)
- **Carpeta:** `vm_opcion_2/`
- **Ideal para:** Quienes no tengan una Raspberry o quieran practicar en su notebook.
- **Requisitos:** PC con al menos 4GB de RAM, VirtualBox instalado y Ubuntu Server 24.04 LTS.
- **Nota:** La instalación es más rápida (10-20 min) porque la PC tiene más recursos (usa `make -j4`).

---

## 🚀 Instrucciones de Uso

### Si usás la Raspberry Pi (Opción 1)
1. Clonar el repositorio:
   ```bash
   git clone https://github.com/lggamboa/workshop-voip-iua.git
   cd workshop-voip-iua/rpi_opcion_1
