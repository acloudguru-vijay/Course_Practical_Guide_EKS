eksctl create iamserviceaccount \
    --cluster eks-acg \
    --name resources-api-iam-service-account \
    --namespace development \
    --attach-policy-arn arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess \
    --approve --override-existing-serviceaccounts

helm upgrade --install --namespace development resource-api-development .