# Input bindings are passed in via param block.
param($Timer)

# Get the current universal time in the default string format
$currentUTCtime = (Get-Date).ToUniversalTime()

# The 'IsPastDue' porperty is 'true' when the current function invocation is later than scheduled.
if ($Timer.IsPastDue) {
    Write-Host "PowerShell timer is running late!"
}

# Write an information log with the current time.
Write-Host "PowerShell timer trigger function ran! TIME: $currentUTCtime"

# Get the enviroment variables...
# Verify credientials are passed
# gci $env:* | out-host

# write-host "$(get-childitem -path env:* | out-string)"

# Write-host "$(get-psdrive )"

# Write-Host "My subid is: $env:AZURE_SUBSCRIPTION_ID"
# Write-Host "My AZURE_TENANT_ID: $env:AZURE_TENANT_ID"
# Write-Host "My AZURE_CLIENT_ID: $env:AZURE_CLIENT_ID"
# Write-Host "My AZURE_CLIENT_SECRET: $env:AZURE_CLIENT_SECRET"

write-host "1"
write-host "$(get-azcontext | out-string)"
write-host "2"
$results = get-azroleassignment
write-output "`n$results"

write-host "3"