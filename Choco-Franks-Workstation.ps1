Set-ExecutionPolicy Unrestricted
# chocolatey install
Invoke-Expression ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

# Choose the applications to install
$minimal_install = 1
$browsers = 0
$network_utilities = 0
$windows_utilities = 0
$office_apps = 0
$chat = 0
$programming = 0
$vmware = 0
$msp_tools = 0
# Update the baseline apps
choco upgrade /y powershell
choco upgrade /y chocolatey

if ($minimal_install -eq 1) {
    choco install /y googlechrome
    choco install /y 7zip
    choco install /y ccleaner
} else {
   # Browsers
   if ($browsers -eq 1) {
        choco install /y googlechrome
        choco install /y Firefox
   }

    # Network utilities
    if ($network_utilities -eq 1) {
        choco install /y winscp
        choco install /y netscan
        choco install /y wireshark
        choco install /y putty
        choco install /y nmap
    }

    # Windows utilities
    if ($windows_utilities -eq 1) {
        choco install /y ditto
        choco install /y 7zip
        choco install /y windirstat
        choco install /y sysinternals
        choco install /y procexp
        choco install /y autoruns
        choco install /y ccleaner
        choco install /y disk2vhd
    }
    
    # Office apps
    if ($office_apps -eq 1) {
        choco install /y dropbox
        choco install /y vlc
        choco install /y adobereader
    }

    # Chat
    if ($chat -eq 1) {
        choco install /y slack
        choco install /y microsoft-teams
    }

    # Programming
    if ($programming -eq 1) {
        choco install /y python
        choco install /y vscode
        choco install /y autohotkey
    }

    # VMWare
    if ($vmware -eq 1) {
        choco install /y vmwarevsphereclient 
        choco install /y vmwareworkstation 
    }
    # MSP Tools
    if ($msp_tools -eq 1) {
        choco install /y solarwinds-backup-manager
        choco install /y solarwinds-recovery-console
        choco install /y connectwise
        choco install /y connectwise-manage-client
    }
}
