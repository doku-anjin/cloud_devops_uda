# CD12352 - Infrastructure as Code Project Solution
# [quocld2]

## Spin up instructions
aws cloudformation create-stack --stack-name $1 --template-body file://$2  --parameters file://$3 --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" --region=us-east-1


## Tear down instructions
aws cloudformation delete-stack --stack-name $1 --region=us-east-1


## Update instructions

aws cloudformation update-stack --stack-name $1 --template-body file://$2  --parameters file://$3 --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" --region=us-east-1

## Web URL
http://udagra-webap-2bvhh64lamdc-1361269616.us-east-1.elb.amazonaws.com/