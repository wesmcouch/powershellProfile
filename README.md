# powershellProfile
This is a powershell profile with functions that will help in powershell scripting

To use these functions, copy them into your powershell profile or use the commands below to copy it to it automatically.
The script below will not overwrite any commands in your profile if it already exists.

```powershell
#If the powershell profile path is not created, create it
$path = Split-Path -parent "$Profile"
If(!(test-path "$Profile"))
{
    New-Item -Path $profile -ItemType "file" -Force
}
cmd /c copy "$Profile" https://raw.githubusercontent.com/wesmcouch/powershellProfile/master/Microsoft.PowerShell_profile.ps1
```
