# devops-project2-cicd
This is a repo created for devops project 2: building a CI/CD pipeline

## Overview
In this project, a github repo is built from scratch and used for constinuous integration (CI) and continuous delivery (CD). This project used makefile and Github actions to perform install, test, and lint cycle. Then it is intergrated with Azure Pipelines for Azure App Service (Flask) delivery with pre-trained machine learning model.


[![Python application test with Github Actions](https://github.com/qzhou19/devops-project2-cicd/actions/workflows/pythonapp.yml/badge.svg)](https://github.com/qzhou19/devops-project2-cicd/actions/workflows/pythonapp.yml)

## Project Plan
* A link to a Trello board for the project: https://trello.com/b/T5wxQufn/udaicty
* A link to a spreadsheet that includes the original and final project plan: 
https://docs.google.com/spreadsheets/d/1J4bmC-MoyyK6Ep0wxbgwQEJ-Hf8eprwv_-ZCAfd-e_o/edit?usp=sharing

## Instructions


* Architectural Diagram (Shows how key parts of the system work)  

__CI Diagram (credits to Udacity course)__

<div align="center">
    <img src="/screenshot/ci-diagram.png"</img> 
</div>

__CD Diagram (credits to Udacity course)__

<div align="center">
    <img src="/screenshot/cd-diagram.png"</img> 
</div>


* Instructions for running the Python project (screenshots are in screenshot folder named by each step number):   

__1. Project running on Azure App Service__  
    _-- this is the final outcome, to setup access:  
    -- run `ssh-keygen -t rsa` to create key, then copy it to github for access  
    -- can also use `python3 -m venv` to create a new environment and activate it for the project_  

<div align="center">
    <img src="/screenshot/1 Azure service running.PNG"</img> 
</div>

__2. Project cloned into Azure Cloud Shell__  
   _-- open cloud shell and `git clone` project link_  
   
<div align="center">
    <img src="/screenshot/2 Project cloned to cloud shell.PNG"</img> 
</div>

__3. Passing tests that are displayed after running the `make all` command from the `Makefile`__  
  _-- go to project folder, then run `make all`_  
  
<div align="center">
    <img src="/screenshot/3 Pass test with make all.PNG"</img> 
</div>

__4. Output of a test run__  
  _-- go to github repo, update the `yml` file and committe_  
  
<div align="center">
    <img src="/screenshot/4 Test run in github action.PNG"</img> 
</div>

__5. Successful deploy of the project in Azure Pipelines__  
  _-- setup a new project in Azure DevOps ogranization, connect to the github repo then create pipeline and run it_  
  
<div align="center">
    <img src="/screenshot/5 Deploy of Azure piepline.PNG"</img> 
</div>

__6. Running Azure App Service from Azure Pipelines automatic deployment__  
  _ -- if step5 is success, the app service should be automatic deployed as well_  
  
<div align="center">
    <img src="/screenshot/6 Deploy of app service frome piepline.PNG"</img> 
</div>

__7. Successful prediction from deployed flask app in Azure Cloud Shell__  
  _ -- once app service is running, change the app name in the `make_predict_azure_app.sh` file, then execute the file_  
  
<div align="center">
    <img src="/screenshot/7 Prediction from cloud shell.PNG"</img> 
</div>

__8. Output of streamed log files from deployed application__  
  _ -- run `az webapp log tail`_  
  
<div align="center">
    <img src="/screenshot/8 Steamed log output.PNG"</img> 
</div>


## Enhancements

Swtich the prediction file into an actual model to accept real time input and output.

## Demo 

https://youtu.be/m_YSk6LtaxQ
