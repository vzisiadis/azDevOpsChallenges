# Challenge 07 - DevSecOps

[< Previous Challenge](./Challenge-Bicep.md) - **[Home](../README.md)** 

## Introduction

DevSecOps is the evolution of DevOps where the company takes on a security-first mindset — putting security into every phase of the development lifecycle, from design to delivery.  
 
When implemented successfully, companies gain both the speed of DevOps development practices and the holistic security and peace of mind that comes with DevSecOps.  
Organizations that adopt DevSecOps unlock the ability to ship code at the same speed, securely.  
 
Specifically, DevSecOps helps organizations: 
  - Shift their security left to occur at more critical points throughout the development lifecycle, aiding to lower vulnerability remediation time.
  - It also helps organizations to form a seamless workflow by integrating into existing toolchains.
  - More so, this aids organizations to continually identify new threat vectors.

Whenever possible it is highly suggested to review the below documentation for a complete guide regarding DevSecOps and best practices across all verticals. 

[DevSecOps](https://github.com/Azure/FTALive-Sessions/tree/main/content/devops/devsecops)

## Description

In this challenge we will update our both our IaC as well as our application build pipeline in order to adopt DevSecOps practices

1. For the IaC pipeline that creates the environment infrastructure add the following steps prior to deployment (in this order) in case any step fails the pipeline should be halted :   
      - Checks if the bicep code can be succesfully build [Hint](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter)
      - Validates if the bicep code along with the provided parameters used can be potentially deployed succesfully  
      - Checks that the to-be created resources adhere to best practices and that no credentials are potentially exposed [Hint - Use Defender for Devops Extension](https://learn.microsoft.com/en-us/azure/defender-for-cloud/defender-for-devops-introduction)  
      - Generates a preview of the to-be deployed resources [Hint](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-what-if?tabs=azure-powershell%2CCLI) followed by a manula approval process (which would verify the Infrastructure to be created). After the manual approval task the actual deployment task is performed.  
   
  
2. For the application code build pipeline add the following steps prior to the build step (in this order) in case any step fails the pipeline should be halted :  
   - Use Azure Defender for DevOps to check for leaked credentials, examine Portable Executable files and security scan (use the Trivy option)
   - Check for potential vulnerabilities in dependecies [Hint](https://marketplace.visualstudio.com/items?itemName=dependency-check.dependencycheck)
