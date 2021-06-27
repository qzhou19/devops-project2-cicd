# devops-project2-cicd
This is a repo created for devops project 2: building a CI/CD pipeline

## Overview
In this project, a github repo is built from scratch and used for constinuous integration (CI) and continuous delivery (CD). This project used makefile and Github actions to perform install, test, and lint cycle. Then it is intergrated with Azure Pipelines for Azure App Service (Flask) delivery with pre-trained machine learning model.


[![Python application test with Github Actions](https://github.com/qzhou19/devops-project2-cicd/actions/workflows/pythonapp.yml/badge.svg)](https://github.com/qzhou19/devops-project2-cicd/actions/workflows/pythonapp.yml)

## Project Plan
* A link to a Trello board for the project: https://trello.com/b/T5wxQufn/udaicty
* A link to a spreadsheet that includes the original and final project plan: 
https://docs.google.com/spreadsheets/d/1J4bmC-MoyyK6Ep0wxbgwQEJ-Hf8eprwv_-ZCAfd-e_o/edit?usp=sharing

## Architectural Diagram (Shows how key parts of the system work)  

__CI Diagram (credits to Udacity course)__

<div align="center">
    <img src="/screenshot/ci-diagram.png"</img> 
</div>

__CD Diagram (credits to Udacity course)__

<div align="center">
    <img src="/screenshot/cd-diagram.png"</img> 
</div>


## Instructions for running the Python project :   
__There are 8 steps below plus the locust test run and screenshot of each step end results__

__1. Project running on Azure App Service__  
    _-- this is the final outcome (pic below), to setup access, assuming you already have a Azure account and github account  
    -- to start, create a new repo for this project then follow steps below, the repo needs to have Azure Pipelines marketplace app enabled_      

<div align="center">
    <img src="/screenshot/1 Azure service running.PNG"</img> 
</div>


__2. Project cloned into Azure Cloud Shell__  
   _-- in cloud shell, run `ssh-keygen -t rsa` to create key, then add it to github ssh key in the github setting menu for access  
    -- can also use `python3 -m venv myrepo` in cloud shell to create a new environment and activate it with `source myrepo/bin/activate` for the project  
    -- in cloud shell use `git clone` and copy project link, below is the screenshot after git clone_  
   
<div align="center">
    <img src="/screenshot/2 Project cloned to cloud shell.PNG"</img> 
</div>


__3. Passing tests that are displayed after running the `make all` command from the `Makefile`__  
  _-- go to project folder, then run `make all`, below is the screenshot showing the result of make all, with test passing_  
  
<div align="center">
    <img src="/screenshot/3 Pass test with make all.PNG"</img> 
</div>


__4. Output of a test run__  
  _-- go to github repo, enabler actions, update the `yml` file with given example file and committe, below shows the results after running_  
  
<div align="center">
    <img src="/screenshot/4 Test run in github action.PNG"</img> 
</div>


__5. Successful deploy of the project in Azure Pipelines__  
  _-- setup a new project in Azure DevOps ogranization with Microsoft Resource Manager as service connection  
  -- in the pipeline, connect to the github (YAML) repo then choose Python to Linux Web App on Azure to finish configurate and run it  
  -- below shows a successful run of pipeline_  
  
<div align="center">
    <img src="/screenshot/5 Deploy of Azure piepline.PNG"</img> 
</div>


__6. Running Azure App Service from Azure Pipelines automatic deployment__  
  _-- if step5 is success, the app service should be automatic deployed as well as shown below_  
  
<div align="center">
    <img src="/screenshot/6 Deploy of app service frome piepline.PNG"</img> 
</div>

__7. Successful prediction from deployed flask app in Azure Cloud Shell__  
  _-- once app service is running, change the app name in the `make_predict_azure_app.sh` file  
  -- in cloud shell, run `./make_predict_azure_app.sh` to check the prediciton results as shown below_  
  
<div align="center">
    <img src="/screenshot/7 Prediction from cloud shell.PNG"</img> 
</div>

__8. Output of streamed log files from deployed application__  
  _-- in cloud shell, run `az webapp log tail`, below is the output_  
  
<div align="center">
    <img src="/screenshot/8 Steamed log output.PNG"</img> 
</div>

## Load Test with Locust
After the app is running, run `locust` in the local shell with the file `locustfile.py`, then go to localhost:8089, enter the host website to check the results

<div align="center">
    <img src="/screenshot/locust.PNG"</img> 
</div>


## Enhancements

Be more clear on instructions/requirements, it was confusing about the whole locust requiremnts as no place in the course mentioned how to use it, then the project itself, neither the readme guide in the given repo nor the instruction in the udacity course mentioned it at all. 

## Demo 

https://youtu.be/m_YSk6LtaxQ
