# Bootstrap Windows 10 machine

### Install chocolatey in admin powershell session with:
```
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

### Open Powershell, allow remote execution, and then run scripts
```
Set-ExecutionPolicy RemoteSigned
Set-ExecutionPolicy Unrestricted
git clone https://github.com/CushItRealGood/bootstrap-windows.git
```
Download zip file from github if cloning is too cumbersome or not installed yet

### Debloat windows with this application
The following script needs to be run seperate from scripts and generates GUI
```
iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))
```
