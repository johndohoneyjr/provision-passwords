#!/bin/bash

# Set the password store and client
passwordStore="<passwordStore>"
client="<client>"

# Retrieve the secret from the password manager
secret=$(pass "$passwordStore/azure/$client")

# Login to Azure using the service principal
az login --service-principal -u "$client" -p "$secret" --tenant "$tenant"

echo "Logged in to Azure"
