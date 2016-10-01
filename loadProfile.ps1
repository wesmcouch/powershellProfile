#This script loads the powershell profile from github for a one liner in the console
#If the powershell profile path is not created, create it
If(!(test-path "$Profile"))
{
    $path1 = Split-Path -Path "$Profile"
    New-Item -ItemType Directory -Force -Path $path1
    $WebClient2 = New-Object System.Net.WebClient
    $WebClient2.DownloadFile("http://raw.githubusercontent.com/wesmcouch/powershellProfile/master/Microsoft.PowerShell_profile.ps1","$Profile")
}
#Reload the profile into the current session
.$Profile
