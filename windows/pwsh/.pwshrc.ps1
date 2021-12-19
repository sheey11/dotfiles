Import-Module oh-my-posh
Set-PoshPrompt -Theme ~/.oh-my-posh.omp.json

Set-Alias kill Stop-Process
Set-Alias ll Get-ChildItem

Function help {
    get-help $args[0] | out-host -paging
}

Function man {
    get-help $args[0] | out-host -paging
}

# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Autocompletion for arrow keys
# Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
# Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

$Env:Path += ";C:\Users\sheey\AppData\Local\Yarn\bin"
