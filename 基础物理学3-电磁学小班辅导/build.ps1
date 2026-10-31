$ErrorActionPreference='Stop'
Push-Location $PSScriptRoot
try {
  New-Item -ItemType Directory -Force -Path 'build' | Out-Null
  for ($taskPass=1; $taskPass -le 2; $taskPass++) {
    & xelatex -interaction=nonstopmode -halt-on-error -file-line-error -output-directory=build main.tex
    if ($LASTEXITCODE -ne 0) { throw "XeLaTeX compilation failed on pass $taskPass" }
  }
  Get-Item -LiteralPath 'build\main.pdf' | Select-Object FullName,Length
} finally {
  Pop-Location
}
