$files = Get-ChildItem -Path "." -Filter "*.cs" | % { $_.FullName } | Sort-Object
$types = Add-Type -Path $files -PassThru
$types | Select-Object -ExpandProperty Assembly
