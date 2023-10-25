# Revision History {#dap_revisionHistory}

The table below provides information about the changes delivered with specific versions of CMSIS-DAP updates.

<table class="cmtable" summary="Revision History">
    <tr>
      <th>Version</th>
      <th>Description</th>
    </tr>
    <tr>
      <td>V2.1.2</td>
      <td>
         Fix \ref DAP_Transfer handling when transfer fails
      </td>
    </tr>
    <tr>
      <td>V2.1.1</td>
      <td>
         Allow default clock frequency to use fast clock mode
      </td>
    </tr>
    <tr>
      <td>V2.1.0</td>
      <td>
         Added: \ref DAP_uart_gr to support target communication via extra UART\n
         Added: UART Receive/Transmit Buffer Size values in the command \ref DAP_Info \n
         Added: Target Board Vendor and Target Board Name strings in the command \ref DAP_Info \n
         Added: Product Firmware Version string in the command \ref DAP_Info \n
         Changed: String encoding in \ref DAP_Info from ASCII to UTF-8
      </td>
    </tr>
    <tr>
      <td>V2.0.0</td>
      <td>
         Changed: Communication via USB bulk endpoints to achieve high-speed transfer rates\n
         Added: Streaming SWO via separate \ref dap_bulk_usb "USB bulk endpoint"\n
         Added: \ref DAP_SWO_Transport extended with transport mode 2 - Send trace data via separate \ref dap_bulk_usb "USB bulk endpoint" 
      </td>
    </tr>
    <tr>
      <td>V1.3.0</td>
      <td>
         Added: Target Board Vendor and Target Board Name strings in the command \ref DAP_Info \n
         Added: Product Firmware Version string in the command \ref DAP_Info \n
         Changed: String encoding in \ref DAP_Info from ASCII to UTF-8
      </td>
    </tr>
    <tr>
      <td>V1.2.0</td>
      <td>
         Added: \ref DAP_SWD_Sequence to enable SWD multi-drop target selection \n
         Added: Test Domain Timer values in the commands \ref DAP_Info, \ref DAP_Transfer
      </td>
    </tr>
    <tr>
      <td>V1.1.0</td>
      <td>
         Added: \ref DAP_swo_gr to support Serial Wire Output (SWO) in UART mode\n
         Added: \ref DAP_atomic_gr support for executing time critical DAP commands
      </td>
    </tr>
    <tr>
      <td>V1.0.0</td>
      <td>Version 1.0.0 was never released; version number skipped.</td>
    </tr>
    <tr>
      <td>V0.02</td>
      <td>Renamed **DAP_LED** to \ref DAP_HostStatus.</td>
    </tr>
    <tr>
      <td>V0.01</td>
      <td>Beta Release.</td>
    </tr>
</table>
