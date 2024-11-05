param (
    [string]$TestExecutable = "build/test_utils"
)

Write-Host "Running tests..."

# Run the test executable
& $TestExecutable
if ($LASTEXITCODE -ne 0) {
    Write-Error "Tests failed!"
    exit 1
}

Write-Host "All tests passed successfully!"

