# Set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

Import-Module -Name Terminal-icons

function Edit-Profile {
    nvim $PROFILE.CurrentUserAllHosts
}

# PSReadLine
Set-PSReadLineOption -PredictionSource HistoryAndPlugin
Set-PSReadLineOption -PredictionViewStyle ListView

# Set Prompt
Invoke-Expression (&starship init powershell)
