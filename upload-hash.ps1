#While OOBE is running, you can start uploading the hardware hash by opening a command prompt (Shift+F10 at the sign-in prompt), enter "PowerShell.exe" in the command prompt that opens and then using the following PowerShell commands to upload the hash to Autopilot. You can optional add -grouptag <grouptag> to add the grouptag during the upload.

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Set-ExecutionPolicy -Scope Process -ExecutionPolicy RemoteSigned
Install-Script -name Get-WindowsAutopilotInfo -Force

use:
Get-WindowsAutopilotInfo -Online

or use:
Get-WindowsAutopilotInfo -Online -grouptag <grouptag>
