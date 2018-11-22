# OpenShift installation on azure

This templates azuredeploy.json doesn't install OpenShift but create the infrastructure for deployment.
the installation will be performed from bastion server.



## Install with template



Make sure you have enough cpu in your region, otherwise open request by azure support.



1. Create the resource group first with script:



            ./create_resource_group.sh


2. Run  infrastructure installation with script:


            ./install_azure.sh













### tips to work with azure

Set DNS

https://docs.microsoft.com/en-us/azure/dns/dns-getstarted-cli



List dns record-set:


      az network dns record-set list --resource-group raf --zone-name az-majorov.net -o table


restart vms

        for i in {1..3};do az  vm restart  --name infra$i --no-wait -g raf ; done

        for i in {1..3};do az  vm restart  --name master$i --no-wait -g raf ; done




Create keys:


          az keyvault create -n osekeyvault -g raf --enabled-for-template-deployment true


 use http://nip.io/





