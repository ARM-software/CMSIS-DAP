# Host OS Drivers {#dap_drv_install}

Using CMSIS-DAP v2 compliant debug adapter removes the necessity to install separate drivers on Mac OS, Linux, and Windows (8 and above).

\ref dap_config_usb explains how USB stack shall be configured in the CMSIS-DAP firmware to ensure its correct operation with native OS drivers.

## Additional requirements for Linux {#udevrules}

On Linux, permission to access USB devices from user space must be explicitly granted via udev rules. Exemplary udev rules are available in the [pyOCD GitHub repo](https://github.com/pyocd/pyOCD/tree/main/udev) that allow to access common debug probes without requiring it to be run as root.

## Additional requirements for Windows {#win}

Using CMSIS-DAP compliant adapters on Windows 8 and above does not require separate driver installation. 

For older versions, or in case of issues, you can use the the .inf file located in `Firmware/Template/CMSIS_DAP_v2.inf`.
