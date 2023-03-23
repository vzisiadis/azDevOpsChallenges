# Challenge 06 - Bicep modules - Specs - Versioning

[< Previous Challenge](./Challenge-Pipelines-2.md) - **[Home](../README.md)** - [Next Challenge >](./Challenge-Monitoring.md)

## Introduction

In order to make our bicep code more reusable and scalable in large enterprise setups we can write in a modular format so that we can reuse the same components across differents application workloads with varying inputs.   
In addition we might need to provide an out-of-the-box solution to deploy a componetns (or even a complete workload) directly from the Azure Portal.
Lastly, we can pubish our bicep IaC modules to a registry from which they can be reused across our organization. Adopting this will also allow us to follow a phased quality control approach for our Infrastructure as Code templates same as our applications code. The new version of bicep module templates can be published first to a dev/test registry on which they are checked and after approvals then pushed to the production registry from which they can be used to create application infrastructure.

Please take a moment to review this brief article talking about why this is important. 

1. [Bicep Modules](https://learn.microsoft.com/en-us/training/modules/create-composable-bicep-files-using-modules/2-create-use-bicep-modules?tabs=visualizer)
2. [Azure Template Specs](https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/template-specs?tabs=azure-powershell)
3. [Bicep Registry](https://learn.microsoft.com/en-us/azure/architecture/guide/azure-resource-manager/advanced-templates/enterprise-infrastructure-bicep-container-registry)

## Description

In this challenge we will update our bicep code too be more reusable and also provide it to users through Template Specs and Bicep Registry. 

1. Re-write the existing bicep template that is used for deploying our infrastracture using modules. [Hint](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/modules)     
  Create three modules in total for:  
      - Application Insights
      - Container Registry
      - App Service resrouces
  Create a main deployment file which will invoke the created modules to create the Infrastructure.
  Deploy the new template through your pipeline (the environment should remain unaffected)    
  
2. Publish your bicep template as a Template Spec through a YAML pipeline. Access the template through the Azure portal and deploy it (use different parameters at least for the Web App name) [Hint](https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/template-specs?tabs=azure-cli#use-tags)    

3. Publish your bicep tempate in your Azure Container Registry. Use a versioning scheme of major.minor (i.e. templateName:1.0, templateName:0.1 or similar) [Hint](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/private-module-registry?tabs=azure-cli)  
   Update your bicep code so that it uses the module from the registry and not use any of the local module files) 

