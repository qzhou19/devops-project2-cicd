#create ssh key
ssh-keygen -t rst

#check ssh key
cat /home/qian/.ssh/id_rsa.pub

#create and activate virtual environment
python3 -m venv ~/.myrepo
source ~/.myrepo/bin/activate

#clone repo
git clone git@github.com:qzhou19/devops-project2-cicd.git
cd devops-project2-cicd

#check makefile
make all

#create app service
az webapp up -n p2-flask

#make predictions
./make_predict_azure_app.sh

#check logs
az webapp log tail
