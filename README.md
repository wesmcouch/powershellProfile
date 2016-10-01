# powershellProfile
This is a powershell profile with functions that will help in powershell scripting

To use these functions, copy them into your powershell profile or use the commands below to copy it to it automatically.
The script below will not overwrite any commands in your profile if it already exists.

```powershell
powershell (New-Object System.Net.WebClient).DownloadString("https://raw.githubusercontent.com/wesmcouch/powershellProfile/master/loadProfile.ps1");
```
