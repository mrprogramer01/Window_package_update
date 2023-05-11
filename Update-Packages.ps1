# Check if running on Windows 10 or 11
if ([int][version]::Parse((Get-CimInstance Win32_OperatingSystem | Select-Object -ExpandProperty Version)).Major -lt 10) {
    Write-Host "This script requires Windows 10 or later."
    exit 1
}

# Get list of available updates
$updates = Get-WindowsUpdate -KBArticleID "" | Where-Object {$_.Title -like "*update*"} 

# Filter out up-to-date packages and install others
foreach ($update in $updates) {
    If($update.IsInstalled -eq $false){
        Write-Host "Updating $($update.Title)"
        Install-WindowsUpdate -KBArticleID $update.KnowledgebaseArticles[0].KBArticleID -AcceptAll -IgnoreReboot 
    }else{
        Write-Host "$($update.Title) is already up-to-date."
    }
}
