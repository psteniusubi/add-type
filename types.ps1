$files = Get-ChildItem -Path "." -Filter "*.cs" | % { $_.FullName } | Sort-Object
$args = @{}
if($PSVersionTable.PSEdition -eq "Core") {
    $args = @{
        IgnoreWarnings=$true
    }
} else {
    $parameters = [System.CodeDom.Compiler.CompilerParameters]::new()
    $parameters.CompilerOptions = "/define:$($PSVersionTable.PSEdition)"
    $parameters.TreatWarningsAsErrors = $false
    $parameters.WarningLevel = 0
    $args = @{
        CompilerParameters=$parameters
    }
}
$types = Add-Type -Path $files @args -PassThru
$types | Select-Object -ExpandProperty Assembly
