# Script para guardar la imagen del alambre
# Por favor, guarda manualmente la imagen que compartiste como:
# assets/images/alambre_12_centelsa.jpg

Write-Host "Por favor, sigue estos pasos:" -ForegroundColor Cyan
Write-Host "1. Haz clic derecho en la imagen del alambre que compartiste" -ForegroundColor Yellow
Write-Host "2. Selecciona 'Guardar imagen como...'" -ForegroundColor Yellow
Write-Host "3. Guárdala en la carpeta: assets\images\" -ForegroundColor Yellow
Write-Host "4. Con el nombre: alambre_12_centelsa.jpg" -ForegroundColor Yellow
Write-Host ""
Write-Host "Ruta completa: $PSScriptRoot\assets\images\alambre_12_centelsa.jpg" -ForegroundColor Green

# Abrir la carpeta de destino
$targetPath = Join-Path $PSScriptRoot "assets\images"
if (Test-Path $targetPath) {
    explorer $targetPath
    Write-Host "`nCarpeta abierta en el explorador." -ForegroundColor Green
} else {
    Write-Host "`nError: La carpeta no existe." -ForegroundColor Red
}
