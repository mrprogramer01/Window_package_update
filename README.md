# Window_package_update

Update Packages PowerShell Script

This PowerShell script checks for available updates on Windows 10 and Windows 11 systems and installs them if they're not already up-to-date. It filters out any packages that are already installed.

Prerequisites

This script requires Windows 10 or later.

You must have administrative privileges to run this script.

How to Use

Download the Update-Packages.ps1 file to your computer.

Open Windows PowerShell as an administrator.

Navigate to the folder where the script is located using the cd command.

Run the script by entering .\Update-Packages.ps1.

Customizing the Script

You can customize this script further based on your specific needs. For example, you could modify it to only install certain types of updates or to prompt the user before installing updates.


Filtering Updates

You can filter updates by modifying the Get-WindowsUpdate cmdlet in the script. The -KBArticleID parameter can be used to filter updates by their Knowledge Base article ID.

Prompting the User

You can prompt the user before installing updates by adding a confirmation step to the script using PowerShell's Read-Host cmdlet. For example:

powershell
$confirm = Read-Host "Do you want to install available updates? (Y/N)"
if ($confirm -eq "Y") {
    # Install updates
} else {
    Write-Host "Updates not installed."
}


License

This script is released under the MIT License. Feel free to modify and distribute it as needed.
