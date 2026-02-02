# Revamping PSLab Communication Architecture

## Overview

The PSLab device currently uses a mixed communication model where the MCU is responsible for:
- Performing measurements
- Managing instrument state
- Handling communication with the host over UART, USB, or WiFi (via ESP32)

This design works but introduces unnecessary complexity, tight coupling, and scaling limitations as new communication interfaces or device variants are introduced.

This document proposes a simplified and more modular communication architecture.

---

## Current Architecture Problems

1. *Multiple responsibilities on MCU*
   - MCU handles both measurement logic and communication protocols.
   - Requires maintaining protocol state alongside instrument state.

2. *Tight coupling*
   - Communication logic is tightly coupled with MCU firmware.
   - Adding or modifying interfaces (USB/WiFi) increases firmware complexity.

3. *Limited extensibility*
   - Supporting multiple device variants or future expansions requires significant firmware changes.
   - Hard to evolve communication independently of measurement logic.

---

## Proposed Architecture

### Key Idea
Introduce a *single communication gateway* (ESP32) that handles all external communication, while the MCU focuses only on measurements.

### Proposed Data Flow
- All external communication is terminated at the ESP32.
- ESP32 is responsible for protocol handling, routing, and translation.
- MCU exposes a minimal, stable internal command interface.
- ESP32 converts host commands into MCU-understandable instructions.
## Responsibilities Breakdown

### ESP32
- Handles all external communication (USB, UART, WiFi)
- Manages protocol parsing and routing
- Acts as a stable interface for host software

### MCU
- Handles measurements and instrument control
- Implements deterministic measurement logic
- Exposes a minimal internal command interface
## Conclusion

This document proposes a cleaner and more modular communication architecture
for PSLab by separating communication concerns from measurement logic.

This is a documentation-only proposal and does not require immediate hardware
or firmware changes. It serves as a reference architecture for future
development and discussion.