Set-ExecutionPolicy Unrestricted
# chocolatey install
Invoke-Expression ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
#######################
# install applications#
#######################

# Update the baseline apps
choco upgrade /y powershell
choco upgrade /y chocolatey

# Browsers
choco install /y googlechrome
choco install /y Firefox

# Network utilities
choco install /y winscp
choco install /y netscan
choco install /y wireshark
choco install /y putty
choco install /y nmap

# Windows utilities
choco install /y ditto
choco install /y 7zip
choco install /y windirstat
choco install /y sysinternals
choco install /y procexp
choco install /y autoruns
choco install /y ccleaner
choco install /y disk2vhd


# Office apps
choco install /y dropbox
choco install /y vlc
choco install /y adobereader

# Chat
choco install /y slack
choco install /y microsoft-teams

# Programming
choco install /y python
choco install /y vscode
choco install /y autohotkey

# VMWare
choco install /y vmwarevsphereclient

