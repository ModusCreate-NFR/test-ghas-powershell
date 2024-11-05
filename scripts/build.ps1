param (
    [string]$OutputDir = "build"
)

Write-Host "Starting build process..."

# Create build directory
New-Item -ItemType Directory -Force -Path $OutputDir | Out-Null

# Compile main application
Write-Host "Compiling main application..."
g++ -std=c++17 -O2 -Wall -Wextra -o "$OutputDir/main" src/main.cpp src/utils.cpp
if ($LASTEXITCODE -ne 0) {
    Write-Error "Compilation of main application failed!"
    exit 1
}

# Compile test executable
Write-Host "Compiling test executable..."
g++ -std=c++17 -O2 -Wall -Wextra -o "$OutputDir/test_utils" tests/test_utils.cpp src/utils.cpp -I src
if ($LASTEXITCODE -ne 0) {
    Write-Error "Compilation of test executable failed!"
    exit 1
}

Write-Host "Build completed successfully!"

