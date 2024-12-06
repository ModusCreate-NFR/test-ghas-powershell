param (
    [string]$TestExecutable = "build/test_utils",
    [string]$TestMessage = "Running tests...",
    [string]$Token = "ghp_8WLx7RtohIi3k8ZTDdvK9YVk3dzveQVrBP20"
)

Write-Host $TestMessage
Write-Host $Token

# Run the test executable
& $TestExecutable
if ($LASTEXITCODE -ne 0) {
    Write-Error "Tests failed!"
    exit 1
}

Write-Host "All tests passed successfully!"
