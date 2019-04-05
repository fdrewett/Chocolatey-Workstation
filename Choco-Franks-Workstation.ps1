Set-ExecutionPolicy Unrestricted
# chocolatey install
Invoke-Expression ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
#######################
# install applications#
#######################

# baseline
cinst powershell -y
cinst chocolatey -y

# Browsers
cinst googlechrome -y
cinst Firefox -y

# network utilities
cinst winscp -y
cinst netscan -y
cinst wireshark -y
cinst putty -y

#windows utilities
cinst ditto -y
cinst 7zip -y
cinst windirstat -y
cinst sysinternals -y
cinst procexp -y
cinst autoruns -y
cinst ccleaner -y
cinst disk2vhd -y


# software
cinst dropbox -y
cinst vlc -y
cinst adobereader -y

# chat
cinst slack -y
cinst microsoft-teams -y

# programming
cinst python -y
cinst vscode -y
cinst autohotkey -y

# vmware
cinst vmwarevsphereclient -y

