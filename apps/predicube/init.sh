export ALVAROINSTANCE="ubuntu@alvaro.predicubemedia.com"
export DUMBOINSTANCE="ubuntu@dumbo.predicubemedia.com"

alias instance='ssh -A $ALVAROINSTANCE -i ~/.ssh/ec2_fabric_key'
alias dumbo='ssh -A $DUMBOINSTANCE -i ~/.ssh/ec2_fabric_key'
