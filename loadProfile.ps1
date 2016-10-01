#This script loads the powershell profile from github for a one liner in the console
#If the powershell profile path is not created, create it
$path = Split-Path -parent "$Profile"
If(!(test-path "$Profile"))
{
    New-Item -Path $profile -ItemType "file" -Force
}
#Download the powershell profile
cmd /c copy "$Profile" https://raw.githubusercontent.com/wesmcouch/powershellProfile/master/Microsoft.PowerShell_profile.ps1
#Reload the profile into the current session
.$Profile
