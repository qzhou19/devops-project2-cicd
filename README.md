# devops-project2-cicd
This is a repo created for devops project 2: building a CI/CD pipeline

[![Python application test with Github Actions](https://github.com/qzhou19/devops-project2-cicd/actions/workflows/pythonapp.yml/badge.svg)](https://github.com/qzhou19/devops-project2-cicd/actions/workflows/pythonapp.yml)

## Project Plan
* A link to a Trello board for the project: https://trello.com/b/T5wxQufn/udaicty
* A link to a spreadsheet that includes the original and final project plan: 
https://docs.google.com/spreadsheets/d/1J4bmC-MoyyK6Ep0wxbgwQEJ-Hf8eprwv_-ZCAfd-e_o/edit?usp=sharing

## Instructions


* Architectural Diagram (Shows how key parts of the system work)  

__GitHub -> Azure Pipeline -> Azure App Service -> Flask ML API__

* Instructions for running the Python project (screenshots are in screenshot folder named by each step number):   

__1. Project running on Azure App Service__  
    _-- this is the final outcome, to setup access:  
    -- run `ssh-keygen -t rsa` to create key, then copy it to github for access  
    -- can also use `python3 -m venv` to create a new environment and activate it for the project_

__2. Project cloned into Azure Cloud Shell__  
   _-- open cloud shell and `git clone` project link_

__3. Passing tests that are displayed after running the `make all` command from the `Makefile`__  
  _-- go to project folder, then run `make all`_

__4. Output of a test run__  
  _-- go to github repo, update the `yml` file and committe_

__5. Successful deploy of the project in Azure Pipelines__  
  _-- setup a new project in Azure DevOps ogranization, connect to the github repo then create pipeline and run it_

__6. Running Azure App Service from Azure Pipelines automatic deployment__  
  _ -- if step5 is success, the app service should be automatic deployed as well_

__7. Successful prediction from deployed flask app in Azure Cloud Shell__  
  _ -- once app service is running, change the app name in the `make_predict_azure_app.sh` file, then execute the file_

__8. Output of streamed log files from deployed application__  
  _ -- run `az webapp log tail`_

> 

## Enhancements

Swtich the prediction file into an actual model to accept real time input and output.

## Demo 

https://youtu.be/m_YSk6LtaxQ
