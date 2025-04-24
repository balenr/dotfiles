# Set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

Import-Module -Name Terminal-icons

function Edit-Profile {
    nvim $PROFILE.CurrentUserAllHosts
}

# Enhanced PowerShell Experience
# Enhanced PSReadLine Configuration
$PSReadLineOptions = @{
    HistoryNoDuplicates = $true
    HistorySearchCursorMovesToEnd = $true
    Colors = @{
        Command = '#87CEEB'  # SkyBlue (pastel)
        Parameter = '#98FB98'  # PaleGreen (pastel)
        Operator = '#FFB6C1'  # LightPink (pastel)
        Variable = '#DDA0DD'  # Plum (pastel)
        String = '#FFDAB9'  # PeachPuff (pastel)
        Number = '#B0E0E6'  # PowderBlue (pastel)
        Type = '#F0E68C'  # Khaki (pastel)
        Comment = '#D3D3D3'  # LightGray (pastel)
        Keyword = '#8367c7'  # Violet (pastel)
        Error = '#FF6347'  # Tomato (keeping it close to red for visibility)
    }
    PredictionSource = 'HistoryAndPlugin'
    PredictionViewStyle = 'ListView'
    BellStyle = 'None'
}
Set-PSReadLineOption @PSReadLineOptions

# Set Prompt
# Invoke-Expression (&starship init powershell)

if (Test-Path -Path $profile.CurrentUserAllHosts -PathType Leaf) {
    $existingTheme = Select-String -Raw -Path $profile.CurrentUserAllHosts -Pattern "oh-my-posh init pwsh --config"
    if ($null -ne $existingTheme) {
        Invoke-Expression $existingTheme
        return
    } else {
        oh-my-posh init pwsh | Invoke-Expression
    }
  }

