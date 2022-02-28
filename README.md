# sfdx-module-template
Place folder structure inside of force-app/main/.

# Branches
Branches are used to hold a source of truth for it's corresponding Salesforce org. As a general rule of thumb, all development and administration work should be worked on in a **feature branch**.

## Main Branches
### Master Branch
The **master** branch is used to deploy into the production environment.

### Staging Branch
The **stg** branch is used to deploy into the **staging environment**. A Salesforce staging environment (**STG**) should be a full copy sandbox org. It's purpose is to test code, builds and updates to ensure quality in an environment that closely resembles the production environment. User acceptence testing (UAT) is to be done in this environment to limit unwanted deployments to production. Once UAT & QA is complete and accepted, promote all changes to the **production environment**.

### Integration Branch
The **int** branch is used to deploy into the **integration environment**. A Salesforce integration environment (**INT**) should be a partial copy sandbox org. It's purpose is to combine and validate the work of the entire project so that QA can run their tests before the work is promoted to the **staging environment**.

### Development Branch
The **dev** branch is used to deploy into the **development environment**. A Salesforce development environment (**DEV**) should be a developer org. It's purpose is to develop source code, packages or make administration changes to SFDC. This should be a combination of feature branches and validated by QA before the work is promoted to the **integration environment**.

## Support Branches
### Feature Branch
The **feature** branch is used to compartmentalize individual pieces of work. Whether it be development or administration work, all work done should be in a feature branch and peer reviewed before being promoted to the **development environment**.

### Bug Branch
The **bug** branch is used to compartmentalize individual pieces of work. Whether it be development or administration work, all work done should be in a bug branch and peer reviewed before being promoted to the **development environment**.

### Hotfix Branch
The **hotfix** branch is used to compartmentalize individual pieces of work. Whether it be development or administration work, all work done should be in a hotfix branch and peer reviewed before being promoted to the **development environment**.
