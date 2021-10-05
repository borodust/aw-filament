param (
    [parameter(Mandatory=$false)]
    [int] $BuildThreadCount=0,
    [parameter(Mandatory=$false)]
    [String] $BuildType="MinSizeRel"
)

### CONFIGURATION START ###
$ErrorActionPreference = "Stop"

if ( $BuildThreadCount -eq 0 ) {
    $ComputerSystem = Get-CimInstance -class Win32_ComputerSystem
    $BuildThreadCount = $ComputerSystem.NumberOfLogicalProcessors - 1
    if ( $BuildThreadCount -le 0) {
        $BuildThreadCount = 1
    }
}

Write-Output "Build thread count: $BuildThreadCount"
Write-Output "Build type: $BuildType"

$WorkDir = $PSScriptRoot
$BuildDir = "$WorkDir/build/desktop/"

### CONFIGURATION END ###

md $BuildDir -Force | Out-Null
pushd $BuildDir

$PythonExecutable = Get-Command python3 | Select-Object -ExpandProperty Definition

cmake -G "Visual Studio 16 2019" -A x64 -Thost=x64 `
  -DFILAMENT_SKIP_SAMPLES=ON `
  -DPYTHON_EXECUTABLE="$PythonExecutable" `
  "$WorkDir"

cmake --build "$BuildDir" --config $BuildType --parallel $BuildThreadCount

cp $BuildDir/$BuildType/filament.clawed.dll $BuildDir/
cp $BuildDir/$BuildType/filament.ui.clawed.dll $BuildDir/
cp $BuildDir/$BuildType/filament.util.clawed.dll $BuildDir/

popd
