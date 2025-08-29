Write-Host "Welcome to PowerShell"

oh-my-posh init pwsh --config https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/cobalt2.omp.json | iex

Set-Alias -Name vim -Value nvim
function ll {Get-ChildItem | Format-Table -AutoSize}
function la {Get-ChildItem -Force | Format-Table -AutoSize}