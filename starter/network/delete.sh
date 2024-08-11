#!/bin/bash

# Variables
STACK_NAME="quocld2"  # Replace with the name of your stack
REGION="us-west-2"     # Replace with your desired region

# Delete CloudFormation Stack
aws cloudformation delete-stack \
    --stack-name $STACK_NAME \
    --region $REGION \
    --output json

# Optional: Wait for stack deletion to complete
echo "Waiting for stack to be deleted..."
aws cloudformation wait stack-delete-complete \
    --stack-name $STACK_NAME \
    --region $REGION