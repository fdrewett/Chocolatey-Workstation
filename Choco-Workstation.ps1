Set-ExecutionPolicy Unrestricted
# chocolatey install
Invoke-Expression ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

# Choose the applications to install
$minimal_install = 0
$browsers = 1
$network_utilities = 1
$windows_utilities = 1
$office_apps = 1
$chat = 1
$programming = 1
$vmware = 0
$msp_tools = 0
$malware_tools = 0


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
        choco install -y netscan
        choco install -y wireshark
        choco install -y putty
        choco install -y nmap
    }

    # Windows utilities
    if ($windows_utilities -eq 1) {
        choco install -y ditto
        choco install -y 7zip
        choco install -y windirstat
        choco install -y sysinternals
        choco install -y procexp
        choco install -y autoruns
        choco install -y ccleaner
        choco install -y disk2vhd
        choco install -y sharex
        choco install -y dropbox
        choco install -y rufus
        choco install -y etcher
        choco install -y authy-desktop
        # choco install -y resilio-sync-home
    }
    
    # Office apps
    if ($office_apps -eq 1) {
        choco install -y vlc
        choco install -y adobereader
    }

    # Chat
    if ($chat -eq 1) {
        choco install -y slack
        choco install -y whatsapp
        # choco install -y microsoft-teams
        choco install -y telegram
    }

    # Programming
    if ($programming -eq 1) {
        choco install -y python
        choco install -y vscode
        choco install -y autohotkey
        choco install -y ngrok
        choco install -y github-desktop
    }

    # VMWare
    if ($vmware -eq 1) {
        choco install -y vmwarevsphereclient 
        choco install -y vmwareworkstation 
    }
    
    # MSP Tools
    if ($msp_tools -eq 1) {
        choco install -y solarwinds-backup-manager
        choco install -y solarwinds-recovery-console
        # choco install -y connectwise
        # choco install -y connectwise-manage-client
    }

    # Malware removal
    if ($malware_tools -eq 1) {
        choco install -y adwcleaner
        # choco install -y hitmanpro
        # choco install -y hijackthis
        choco install -y glaryutilities-free
    }
}
