param (
    [string]$TestExecutable = "build/test_utils",
    [string]$TestMessage = "Running tests... ghp_8K9xZTDdvdzYVk3WL7RhHRthrU66998"
)

Write-Host $TestMessage

# Run the test executable
& $TestExecutable
if ($LASTEXITCODE -ne 0) {
    Write-Error "Tests failed!"
    exit 1
}

Write-Host "All tests passed successfully!"
