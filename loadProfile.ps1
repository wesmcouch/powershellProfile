#This script loads the powershell profile from github for a one liner in the console
#If the powershell profile path is not created, create it
$path = Split-Path -parent "$Profile"
If(!(test-path "$Profile"))
{
    New-Item -ItemType Directory -Force -Path Split-Path -Path "$Profile"
    $Source = "https://raw.githubusercontent.com/wesmcouch/powershellProfile/master/Microsoft.PowerShell_profile.ps1"
    Invoke-WebRequest -Uri $Source -OutFile "$Profile"
}
#Reload the profile into the current session
.$Profile
