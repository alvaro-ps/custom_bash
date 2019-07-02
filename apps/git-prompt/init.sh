#!/bin/bash

# https://github.com/magicmonty/bash-git-prompt
# Download the gitprompt.sh file from the Github repo and place it
# wherever consistently with the path indicated in the source below
GIT_PROMPT_ONLY_IN_REPO=0
GIT_PROMPT_THEME=Solarized
export AWS_INSTANCE_ID=`curl -s http://169.254.169.254/latest/meta-data/instance-id`
export AWS_INSTANCE_NAME=$(aws ec2 describe-instances --instance-ids "$AWS_INSTANCE_ID" | jq -c .Reservations[0].Instances[0].Tags[] | grep "Name" | jq -r .Value)

echo "Welcome to $AWS_INSTANCE_NAME"
source ~/.bash-git-prompt/gitprompt.sh
