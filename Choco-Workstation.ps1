﻿# set the execution policy to unrestricted
Set-ExecutionPolicy Unrestricted
# chocolatey install
Invoke-Expression ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))



# Choose the applications to install
$minimal_install = 0
$browsers = 1
$network_utilities = 1
$gaming = 1
$windows_utilities = 1
$office_apps = 1
$chat = 1
$programming = 1
$vmware = 0
$msp_tools = 0
$malware_tools = 0
$rarely_used = 0


# Update the baseline apps
choco upgrade -y powershell
choco upgrade -y powershell-core
choco upgrade -y chocolatey

# Minimal install apps
if ($minimal_install -eq 1) {
    choco install -y googlechrome
    choco install -y 7zip
    choco install -y ccleaner
} else {
    # Browsers
    if ($browsers -eq 1) {
        choco install -y googlechrome
        choco install -y Firefox
    }
    
    # Network utilities
    if ($network_utilities -eq 1) {
        choco install -y winscp
        choco install -y putty
        choco install -y nmap
    }
    
    # Windows utilities
    if ($windows_utilities -eq 1) {
        choco install -y 7zip
        choco install -y windirstat
        choco install -y sysinternals
        choco install -y procexp
        choco install -y autoruns
        choco install -y ccleaner
        choco install -y disk2vhd
        choco install -y rufus
        choco install -y etcher
    }
    
    # Office apps
    if ($office_apps -eq 1) {
        choco install -y adobereader
    }
    
    # gaming
    if ($gaming -eq 1) {
        choco install -y steam
        choco install -y nvidia-geforce-now
    }

    
    # Chat
    if ($chat -eq 1) {
        choco install -y slack
        choco install -y microsoft-teams
    }
    0
    # Programming
    if ($programming -eq 1) {
        choco install -y python
        choco install -y vscode
        choco install -y ngrok
        choco install -y github-desktop
        choco install -y git
        choco install -y hackfont
        choco install -y sourcecodepro
        choco install -y firacode
    }
    
    # VMWare
    if ($vmware -eq 1) {
        choco install -y vmwarevsphereclient 
    }
    
    # MSP Tools
    if ($msp_tools -eq 1) {
        choco install -y solarwinds-backup-manager
        choco install -y solarwinds-recovery-console
    }
    
    # Malware removal
    if ($malware_tools -eq 1) {
        choco install -y adwcleaner
        choco install -y hijackthis
    }
    
    # rarely used
    if ($rarely_used -eq 1) {
        choco install -y glaryutilities-free
        choco install -y hitmanpro
        choco install -y connectwise
        choco install -y connectwise-manage-client
        choco install -y whatsapp
        choco install -y authy-desktop
        choco install -y ditto
        choco install -y vmwareworkstation 
        choco install -y dropbox
        choco install -y netscan
        choco install -y autohotkey
        choco install -y telegram
        choco install -y vlc
        choco install -y wireshark
        choco install -y sharex
        choco install -y resilio-sync-home
        
    }
}
