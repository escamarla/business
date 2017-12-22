@echo off

aws cloudformation create-stack^
  --stack-name "dzarq-improvements-servers"^
  --template-body file://servers.json^
  --parameters ParameterKey="ProjectName",ParameterValue="dzarq"^
               ParameterKey="Prefix",ParameterValue="dz"^
			   ParameterKey="VpcId",ParameterValue="vpc-46ae4b20"^
			   ParameterKey="KeyName",ParameterValue="kp-wordpress-instance"
			   