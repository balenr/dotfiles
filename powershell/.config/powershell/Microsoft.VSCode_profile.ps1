# $esc = "$([char]27)"
# $heart = "$([char]0xf004)"
# $fore = "$esc[38;5"
# function prompt {
#     # Your non-prompt logic here
#     $prompt = Write-Prompt "I $esc[31m$heart$esc[0m"
#     $prompt += " PS $fore;249m"
#     $prompt += & $GitPromptScriptBlock
#     # $prompt += Write-Prompt "$('>' * ($NestedPromptLevel + 1))"
#     if ($prompt) { "$prompt" } else { " " }
# }

# . $env:HOME/.config/powershell/user_profile.ps1

Invoke-Expression (&starship init powershell)