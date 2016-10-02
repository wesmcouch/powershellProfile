$outzip = "C:\openssh.zip"
Invoke-WebRequest -Uri "https://github.com/PowerShell/Win32-OpenSSH/releases/download/v0.0.1.0/OpenSSH-Win64.zip" -OutFile $outzip
Unzip $outzip "C:\openssh"
