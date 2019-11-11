export ALVAROINSTANCE="ubuntu@alvaro.predicubemedia.com"
export DUMBOINSTANCE="ubuntu@dumbo.predicubemedia.com"

alias instance='ssh -A $ALVAROINSTANCE -i ~/.ssh/ec2_fabric_key'
alias dumbo='ssh -A $DUMBOINSTANCE -i ~/.ssh/ec2_fabric_key'
alias commit='git commit -m '
alias push='br=$(git branch | grep \* | cut -d " " -f2); git push origin $br'
alias pull='br=$(git branch | grep \* | cut -d " " -f2); git pull origin $br'
alias ve='function activate_ve { source ~/predicube/pythonVirtualEnv/$1/bin/activate; }; activate_ve'
