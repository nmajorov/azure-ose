#!/bin/env bash


az group deployment create \
 --name ocpdeployment \
 --template-file azuredeploy.json --parameters @azuredeploy.parameters.json \
 --resource-group nmose --debug

