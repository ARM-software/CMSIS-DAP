# Overview {#mainpage}

Many Arm Cortex processors implement CoreSight Debug Access Port ([DAP](https://developer.arm.com/documentation/102585/0000/what-is-a-debug-access-port)) that equips them with powerful on-chip debug and trace capabilities. **CMSIS-DAP** standardizes and simplifies access to this functionalilty for embedded software developers.

**CMSIS-DAP** is a protocol specification and a firmware implementation that enables standardized communication between two sides:

 - On one side an Arm Cortex-based processor where an embedded application is executed,
 - and on the other side a software debug tool that runs on a host computer.

CMSIS-DAP support can be implemented in a standalone debug unit, or also as a component integrated on a development board. The figure below illustrates the concept:

![CMSIS-DAP Interface](./images/CMSIS_DAP_INTERFACE.png)

Connection with the target processor is possible over the physical interfaces supported by the CoreSight DAP: a 5-pin JTAG or a 2-pin Serial Wired Debug (SWD) interface. Additionally it can expose access to a UART for serial-to-USB communication. CMSIS-DAP supports target devices that contain one or more Arm Cortex cores.

For communication with the debugging program the USB connection is used. A broad set of \ref DAP_Commands_gr enables uniform support for CMSIS-DAP independendent on the actual probe.

The \ref dap_firmware provides a template implementation of the CMSIS-DAP concept as well as several example projects for popular debug units.

Debug probes can be validated for compliance to CMSIS-DAP using the scripts explained in \ref dap_validate.

> **Note**
> - CMSIS-DAP v1.x is \a deprecated and is not recommended for new designs.
> - Use \ref dap_firmware "CMSIS-DAP v2.x" instead that provides high-speed SWO trace streaming and does not require driver installation in modern operating systems (Mac OS, Linux, Windows). Refer to \ref dap_drv_install for more information.

## Features and Benefits {#dap_benefits}

 - Provides a standardized interface for debuggers. Interfaces to many standard debuggers is available.
 - Access to CoreSight registers of all Cortex processor architectures (Cortex-A/R/M).
 - Connects via 5-pin JTAG or 2-pin Serial Wire Debug (SWD).
 - Supports multi-core debugging.
 - Supports Serial Wire Output (SWO) of Cortex-M devices.
 - Easy to deploy to debug units based on Cortex-M microcontrollers.
 - Debug unit may be integrated on an evaluation board.
 - Using USB bulk transfers avoids driver installation on host PC.
 - Supports time-critical JTAG or SWD command execution.
 - Supports Test Domain Timer for time measurement using the debug unit.
 - Supports UART communication port, which can be routed to USB COM Port (optional) or native CMSIS-DAP commands (new in CMSIS-DAP Version 2.1.0).
 - Flexible customization is possible with vendor-specific commands.

## Access to CMSIS-DAP {#dap_access}

CMSIS-DAP is actively maintained in [**CMSIS-DAP GitHub repository**](https://github.com/ARM-software/CMSIS-DAP) that contains the full source of CMSIS-DAP firmware as well as this documentation. The table below explains the repository structure.

Directory                             | Description
:-------------------------------------|:------------------------------------------------------
📂 Documentation                      | Folder with sources of this CMSIS-DAP documenation
📂 Firmware                           | Folder with \ref dap_firmware
📄 LICENSE                            | License Agreement (Apache 2.0)
📄 README.md                          | Repository description

See [CMSIS Documentation](https://arm-software.github.io/CMSIS_6/) for an overview of CMSIS software components, tools and specifications.

## Supported Tools and Probes {#dap_ecosystem}

CMSIS-DAP has a well-established support in popular embedded software development tools. Below is a non-exhaustive list with key examples:

**Software Development Tools and Frameworks:**

 - [Arm Keil MDK](https://www.keil.arm.com/)
 - [IAR Embedded Workbench for Arm](https://www.iar.com/ewarm)
 - [SEGGER Embedded Studio](https://www.segger.com/products/development-tools/embedded-studio/)
 - [PlatformIO](https://platformio.org/)
 - [PyOCD](https://pyocd.io/)
 - [OpenOCD](https://openocd.org/)

Also many development tools from chip vendors rely on CMSIS-DAP protocol for communication with devices.

**Debug adapters:**

 - [Arm ULINKplus](https://developer.arm.com/Tools%20and%20Software/ULINKplus)
 - [SEGGER J-Link](https://www.segger.com/products/debug-probes/j-link/)
 - On-board debug adapters from many popular chip vendors.

\ref dap_firmware provides the source code, examples and guidelines for enabling CMSIS-DAP on custom debug units.

## License {#dap_license}

CMSIS-DAP is provided free of charge by Arm under the [Apache 2.0 License](https://raw.githubusercontent.com/ARM-software/CMSIS-DAP/main/LICENSE).
