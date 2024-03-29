#Installing OpenSSH with PowerShell
#confirm openssh version
Get-WindowsCapability -Online | ? Name -like 'OpenSSH*'
# Install the OpenSSH Server example command
Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0
Start-Service sshd
# OPTIONAL but recommended:
Set-Service -Name sshd -StartupType 'Automatic'
# Confirm the Firewall rule is configured. It should be created automatically by setup. 
Get-NetFirewallRule -Name *ssh*
# There should be a firewall rule named "OpenSSH-Server-In-TCP", which should be enabled
# If the firewall does not exist, create one
New-NetFirewallRule -Name sshd -DisplayName 'OpenSSH Server (sshd)' -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 22
#Optional install windows 10 Remote Admin tools
Get-WindowsCapability -Name RSAT* -Online | Add-WindowsCapability -Online

