export ALVAROINSTANCE="ubuntu@alvaro.predicubemedia.com"
export DUMBOINSTANCE="ubuntu@dumbo.predicubemedia.com"

alias instance='ssh -A $ALVAROINSTANCE -i ~/.ssh/ec2_fabric_key'
alias dumbo='ssh -A $DUMBOINSTANCE -i ~/.ssh/ec2_fabric_key'
alias connectec2='connectec2(){ ssh ec2-user@$1;}; connectec2'
alias emr='emr(){ ssh -i ~/ec2_fabric_key.pem -ND 8157 hadoop@$1;}; emr'
alias jenkins='ssh ubuntu@jenkins.predicubemedia.com'
alias api_tunnel='api_tunnel(){ ssh -N -L $1:127.0.0.1:$1 -i ~/.ssh/ec2_fabric_key ubuntu@alvaro.predicubemedia.com;}; api_tunnel'
alias ubuntu='ubuntu(){ ssh -i ~/.ssh/ec2_fabric_key -A ubuntu@$1;}; ubuntu'
