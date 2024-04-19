In this change, we need to do a couple things that are outside CircleCI's config. 

First, we need to establish an OpenID Connection(OIDC) between AWS and CircleCI. This will allow us to connect and interact with AWS services without having to
store AWS credentials inside CircleCI's platform. Plus using OIDC provides short live sessions to avoid static credentials from being misused. 

Second, we also need to create an container registry using AWS's ECR. Once that is done, we can add the orbs which will help us with deploying our container to ECR. 

We also need to add some environment variables in CircleCI like AWS Account ID, AWS_DEFAULT_REGION.

AmazonElasticContainerRegistryPublicFullAccess
AmazonECS_FullAccess
AmazonEC2ContainerRegistryFullAccess