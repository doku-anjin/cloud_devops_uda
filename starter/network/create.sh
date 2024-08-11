#!/bin/bash

# Variables
STACK_NAME="quocld2"                 # Replace with your stack name
TEMPLATE_FILE="network.yml"         # Replace with your CloudFormation template file
PARAMETERS_FILE="network-parameters.json"     # Optional: Replace with your parameters file if you have one
REGION="us-west-2"                    # Replace with your desired region
CAPABILITIES="CAPABILITY_IAM CAPABILITY_NAMED_IAM"  # Include if your template requires IAM roles

# Create CloudFormation Stack
aws cloudformation create-stack \
    --stack-name $STACK_NAME \
    --template-body file://$TEMPLATE_FILE \
    --region $REGION \
    --capabilities $CAPABILITIES \
    ${PARAMETERS_FILE:+--parameters file://$PARAMETERS_FILE} \
    --output json