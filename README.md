Audit Azure RBAC
----------------


Dev Setup
---------

Build docker with

docker build --pull --rm -f "dockerfile" -t azurerbacaudit:latest "."

Run docker with 

# Run interactive with environment variables
> docker run --rm -it --env-file local.env azurerbacaudit:latest

References
----------
- https://docs.microsoft.com/en-us/azure/azure-functions/functions-reference-powershell?tabs=portal
- Using Managemed Identity with powershell https://azure.microsoft.com/en-us/blog/serverless-automation-using-powershell-preview-in-azure-functions/