# Challenge 03B - Azure Repos: Branching & Policies

[< Previous Challenge](./Challenge-Repos-1.md) - **[Home](../README.md)** - [Next Challenge >](./Challenge-Pipelines-1.md)

## Introduction

When we have a deployed instance of our code, we are likely going to get a request to add a feature to our code. To this we need to implement a branching strategy. Review the below articles on the basics of a Git branching strategy and the modified version Microsoft uses called Release Flow.

1. [Git Branching Strategy](https://docs.microsoft.com/en-us/azure/devops/repos/git/git-branching-guidance?view=azure-devops)
2. [GitHub Flow](https://guides.github.com/introduction/flow/)
3. [Release Flow](https://docs.microsoft.com/en-us/azure/devops/learn/devops-at-microsoft/release-flow)


## Description

In this challenge we will implement a few policies in Azure DevOps to ensure that our team is following the rules. Finally we will make a change to our code to see how branching in Git works. 


- Setup a Branch Policy to protect our `master` branch, [hint](https://docs.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops). The policy shall: 
   - Require at least 1 reviewer, however users should be able to approve their own changes (NOTE: you will likely not want to do this in a real app)
   - Require at least 1 linked work item.
   - Add yourself as an required reviewer when pull requests affect the items on the "Views" folder    
- Using a simple Git Branching strategy lets make a change. 
   - Update the Privacy page (Resources\App\Views\Home\Privacy.cshtml) with additional information , currently it says `Use this page to detail your site's privacy policy.` and it should say `Azure DevOps Workshop`
   - Create a Work Item requesting we implement the feature. 
   - Make the change in your code. Be sure to make this change on a new "feature branch"
   - Create a Pull Request to merge the change into `master` and link it with the respective work item you created. Notice how the policies you set are audited on your pull request.
   - Complete your pull request.
   - Remove the policy when done.

## Success Criteria

1. Code cannot be directly updated in Main branch and policy rules are in place for it.
2. Update application code according to defined policies
