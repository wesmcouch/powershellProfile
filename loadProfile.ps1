#This script loads the powershell profile from github for a one liner in the console
#If the powershell profile path is not created, create it
If(!(test-path "$Profile"))
{
    $path1 = Split-Path -Path "$Profile"
    $ProfilePath = "$Profile"
    New-Item -ItemType Directory -Force -Path $path1
    $source = 'https://raw.githubusercontent.com/wesmcouch/powershellProfile/master/Microsoft.PowerShell_profile.ps1'
    Invoke-WebRequest -Uri $source -OutFile $ProfilePath
}
#Reload the profile into the current session
.$Profile
