Function psp {
   param($InputObject = $null)

   BEGIN {$status = $True}

   PROCESS {
      if ($InputObject -and $_) {
         throw 'ParameterBinderStrings\AmbiguousParameterSet'
      } elseif ($InputObject -or $_) {
         $processObject = $(if ($InputObject) {$InputObject} else {$_})

         write-host "Ping [$processObject]"

         if( (Test-Connection $processObject -Quiet -count 1)) {
            write-host "Ping response OK" -ForegroundColor DarkGreen
         }
         else {
            write-host "Ping failed - host not found" -ForegroundColor red
            $status = $False
         }
      }
      else {throw 'ParameterBinderStrings\InputObjectNotBound'}

    # next processObject
    }

    # Return True if pings to all machines succeed:
    END {return $status}
}
Add-Type -AssemblyName System.IO.Compression.FileSystem
function Unzip
{
    param([string]$zipfile, [string]$outpath)

    [System.IO.Compression.ZipFile]::ExtractToDirectory($zipfile, $outpath)
}
