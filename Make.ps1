# Author: PenutChen

# Set Variable
$Main_Source = Get-Content .\Envs\Main_Source
$Main_Object = Get-Content .\Envs\Main_Object

# Run Commands
if ( $args[0] -eq "Build" ) {
    Write-Output "Compiling $Main_Source"
    gcc $Main_Source -o $Main_Object
} elseif ( $args[0] -eq "Run" ) {
    if ( Test-Path $Main_Object ) {
        Write-Output "Running $Main_Object"
        .\Main.exe
    } else {
        Write-Output "$Main_Object Not Found"
    }
} elseif ( $args[0] -eq "Clean" ) {
    Write-Output "Remove $Main_Object"
    Remove-Item $Main_Object
}
