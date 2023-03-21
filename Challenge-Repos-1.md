# Challenge 03 - Azure Repos: Introduction

## Introduction

Historically version control has been the first component that teams have implemented, it is one of the oldest and most well understood components of DevOps. Please take a moment to review the basics of version control, specially focusing on the distributed version control technology, Git.

1. [What is version control?](https://docs.microsoft.com/en-us/azure/devops/learn/git/what-is-version-control)
2. [What is Git?](https://docs.microsoft.com/en-us/azure/devops/learn/git/what-is-git)

## Description

Now that we have a basic understanding of version control and Git, lets get some code checked into source control. Since the language you use for development doesn’t have much of an impact on how we do DevOps we have provided you a simple ASP.NET Core C# web application to use. 

- When you created your project in Azure DevOps, it created a default repository for you in Azure Repos. Clone this repo to your local computer ([hint](https://code.visualstudio.com/Docs/editor/versioncontrol#_cloning-a-repository)).
- Your coach will provide you with a `Resources.zip` file that contains the code and ARM templates for the application.
- Unzip the `Resources.zip` file provided to you by your coach. You should see 2 folders. One containing the application and the other containing our Infrastructure as Code Azure Resource Manager (ARM) template. Copy both of these folders into the root of your cloned repository. 
- Commit and Push the files into Azure Repos using VS Code or your favorite Git client ([hint](https://docs.microsoft.com/en-us/azure/devops/user-guide/code-with-git?view=azure-devops)). 
- Create a new 'feature branch' on your Azure Repo named 'Challenge3'. Update Index.cshtml file under Application/aspnet-core-dotnet-core/Views/Home and change some of the displayed text (for example add an additional exclamation mark on Success!). 
- Push the change in the new branch and then merge with the main branch.
- Make an additional change in the file and push to the 'Challenge3' branch. 
- Create a new Pull Request into main branch for the update.
- Approve and complete the pull request and merge with main branch

## Success Criteria

1. You should be able to go to the Azure DevOps site and under Azure Repos see your code. 
2. The updated code should be visible on the repo after completing the pull request.
