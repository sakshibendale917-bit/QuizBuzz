$ErrorActionPreference = "Stop"
if (-not (Test-Path "server/.env")) {
    Copy-Item "server/.env.example" "server/.env"
    Write-Host "Created server/.env. Add your MongoDB Atlas connection details before starting."
} else {
    Write-Host "server/.env already exists; leaving it unchanged."
}
Write-Host "Next: npm.cmd install"
Write-Host "Then: npm.cmd run install:all"
Write-Host "Then: npm.cmd run dev"
