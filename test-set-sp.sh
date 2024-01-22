#!/bin/bash

# Set your subscription ID
subscriptionId="<subscriptionId>"

# Set the password store
passwordStore="<passwordStore>"

# Login to Azure
az login

# Set the subscription
az account set --subscription "$subscriptionId"

# Create a service principal and capture the output
sp=$(az ad sp create-for-rbac --name http://MyApp --query "{client: appId, secret: password, tenant: tenant}" --output tsv)

# Parse the service principal output
read -r client secret tenant <<< "$sp"

# Store the secrets in the password manager
echo "$secret" | pass insert --echo "$passwordStore/azure/$client"

echo "Service principal has been created and stored in pass"
