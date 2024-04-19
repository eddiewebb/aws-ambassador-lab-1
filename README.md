# AWS Ambassador - From Zero to Hero: Mastering CI/CD Pipelines with CircleCI 

Welcome to the first hands on lab for the AWS Ambassador CircleCI program! In this repository you will find all the code needed to complete
the first lab, From Zero to Hero: Mastering CI/CD Pipelines with CircleCI. This lab is focused on getting users comfortable with the
nuts and bolts of CircleCI. The lab focuses on the developer experience when onboarding a new project to CircleCI. In the lab you will go from
a brand new project on CircleCI to a full production CI/CD pipeline. 

## Prerequisites

For this lab you will be onboarding a new project onto CircleCI and deploying some services into AWS. In order to continue with this lab you will need:

- CircleCI Account (Will be shown how to sign up durning the lab)
- AWS Account (Will be shown how to deploy the following in the lab)
    - OpenID Connect Web Identity
    - IAM Role with the following permissions:
        - AmazonEC2ContainerRegistryFullAccess
        - AmazonECS_FullAccess
        - AmazonElasticContainerRegistryPublicFullAccess
    - Application Load Balancer
    - Security Group
        - Allows Inbound Access for the following ports: `80`, `443`, `8080`
    - ECR
    - ECS
- GitHub Account (Will be forking this repository into your account)

## Milestones

In the repository, you will find the `milestones` folder. This folder contains each "version" of the CircleCI configuration that you will
need to construct in order to complete the lab. The first milestone contains the most basic config while the last milestone contains the full production config. 
As you progress through out the lab, you can always refer the the milestone folders to see what changes are needed to get to the next milestone. 


## Background

With the release of CircleCI's Arm executor, we can now build on multiple architectures via CircleCI's Cloud offering. 
Building on architecture offers better performance/speed and the assurance that your application will indeed work on your platform.

While some examples show using Docker Buildx with QEMU, this can lead to issues with low level languages looking like
they work, but in reality they fail when deployed on your platform.  

For this example we will build a Python application, build Docker images for each architecture(`arm64`, and `amd64`), 
and construct a manifest to tie the Docker images together into a single tag. 

## CI/CD Setup

For this example we will be using CircleCI's infrastructure to build, test and push Docker images. The two main executors
we will be using is the machine executor for both `amd64` and `arm64`.

We want to setup CircleCI to accomplish the following:

- Trigger on every commit to `main` and every PR on this repo
- Build the Flask Demo container
- Test Flask Application
- Test the container to make sure it is functioning
- If tests past, tag the images and push the architecture specific images to ECR
- Create Docker manifests to allow users to pull down the image without caring about architecture
- Deploy the new images to ECS


Currently, the demo deploys a Flask based website utilizing Docker. The flask server is load balanced on multiple architectures! Feel free to refresh a couple times and your architecture should change!

## Deployment Documentation

### Python/Flask Application

Project structure:

```
.
├── .circleci                   - CircleCI CI/CD Pipeline
├── demo
|    ├── app/                   - Python Application
|    ├── requirements.txt
|    └── flask_run.py
|    └── config.py
├── Dockerfile                  - Flask Application Dockerfile
```

## Deploy with Docker

Replace ${DOCKER_IMAGE} and ${TAG} with the name/tag of the image you built.

```
$ docker run -d -p 8080:8080 ${DOCKER_IMAGE}:${TAG}
```

After the application starts, navigate to `http://localhost:8080` in your web browser.
