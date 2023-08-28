$sourcePath = "\\caminho\para\novo\arquivo.ext"
$destinationPath = "C:\caminho\do\arquivo\antigo.ext"

$sourceFileInfo = Get-Item $sourcePath
$destinationFileInfo = Get-Item $destinationPath

if ($sourceFileInfo.LastWriteTime -gt $destinationFileInfo.LastWriteTime) {
    Copy-Item -Path $sourcePath -Destination $destinationPath -Force
    Write-Host "Arquivo copiado com sucesso."
} else {
    Write-Host "O arquivo existente é mais recente. Nenhuma cópia necessária."
}
