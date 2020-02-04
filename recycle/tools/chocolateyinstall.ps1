$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = 'http://ss64.net/westlake/xp/recycle.zip'
  softwareName  = 'recycle*'
  checksum      = '69b4cffea621b10f6a4afc9456a0b97a0f57428d286edac888fadcb4b93ba626'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs