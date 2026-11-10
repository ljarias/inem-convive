#requires -Version 7.0
# Diagnóstico sin modificaciones en el repositorio ni push.
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$repo = 'C:\GitHub\inem-convive'
if (-not (Test-Path -LiteralPath $repo -PathType Container)) { throw "No se encuentra la carpeta $repo" }
Write-Host 'INEM Convive - Comprobación para publicación pública' -ForegroundColor Cyan
Write-Host "Destino: $repo"
$git = Get-Command git -ErrorAction Stop
$inside = & git -C $repo rev-parse --is-inside-work-tree 2>$null
if ($LASTEXITCODE -ne 0 -or $inside -ne 'true') {
    Write-Warning 'La carpeta aún no está inicializada como repositorio Git. No se modificará.'
} else {
    Write-Host "Rama:"; & git -C $repo branch --show-current
    Write-Host "Remotos:"; & git -C $repo remote -v
    Write-Host "Cambios pendientes:"; & git -C $repo status --short
    Write-Host "Archivos PDF rastreados en Git:";
    $tracked = @(& git -C $repo ls-files -- '*.pdf' '*.PDF')
    if ($tracked.Count -gt 0) { $tracked | ForEach-Object { Write-Warning "PDF rastreado: $_" } }
    else { Write-Host 'Ninguno' -ForegroundColor Green }
    Write-Host "Cambios preparados para commit:"; & git -C $repo diff --cached --stat
}
Write-Host "
Verificación local de archivos:" -ForegroundColor Cyan
foreach($path in @('index.html','assets\escudo-inem.png','material_editable\INEM_Convive_Arbol_JSON_v2.json')) {
    $full = Join-Path $repo $path
    if (Test-Path -LiteralPath $full -PathType Leaf) { Write-Host "OK: $path" -ForegroundColor Green }
    else { Write-Warning "Falta: $path" }
}
Write-Host 'No se ejecutó commit, push, ni publicación.' -ForegroundColor Cyan
