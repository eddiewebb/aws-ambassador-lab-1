Milestone 7: Beyond CI 

Some of y'all might be thinking, huh, its call CircleCI not CircleCD, so CircleCI only does CI. But that can be further from the truth. 

In both labs we saw part of CircleCI's CD, continues deployment, when we pushed our new docker images out to ECR. But that is just the tip of the iceberg when it comes to what CircleCI
can do for CD. 

CircleCI also has a part of our platform called Releases. CircleCI releases gives you visibility into your Kubernetes deployments within the CircleCI web app, as well as access to commands and visualisations for release management. From the CircleCI web app, you can: restore, scale, and restart a component. 

With CircleCI releaes you get a single pane of glass to link your CI, build, test, verfiy, deploy, and your CD, continues deployment, rolebacks, rollouts, etc. 

Right now CircleCI Releases works with Kubernetes based deployments but CircleCI plans on support AI use cases like Sagemaker and other deployment methods like serverless and VM based deployments. 

For the current state of CircleCI Releases, you will need to install two things to get the fully functionality. One is the CircleCI Release agent which can easily deployed via Helm into your Kubernetes cluster. 
The release agent will monitor any namespace you tell it too and report back the deployments it sees to CircleCI's UI. 

To gain even more functionality you can opt in to using Argo Rollouts. This will give you progress rollbout and rollback stragities. 

If you are interested in getting started check out the Release overview page https://circleci.com/docs/release/releases-overview/

## Milestone 7: Exploring Beyond CI

Some of you might be under the impression that CircleCI is solely for Continuous Integration (CI) and not for Continuous Deployment (CD). However, that couldn't be further from the truth.

In our previous labs, we caught a glimpse of CircleCI's CD capabilities when we deployed our new Docker images to Amazon ECS. But CircleCI's potential for CD extends far beyond simple image deployments.

### CircleCI Releases
CircleCI Releases is a powerful feature that provides visibility into Kubernetes deployments directly within the CircleCI web app. It offers commands and visualizations for efficient release management. From the CircleCI web app, users can perform actions such as restoring, scaling, and restarting components.

### Unified CI/CD Experience
With CircleCI Releases, users gain a unified view of their CI and CD pipelines. From build and test to deployment and rollback, everything is seamlessly integrated into a single interface, streamlining the entire software delivery process.

### Future Roadmap
While CircleCI Releases currently focuses on Kubernetes-based deployments, CircleCI has plans to expand its support to include AI use cases like AWS Sagemaker and other deployment methods such as serverless and VM-based deployments.

### Getting Started
To leverage the full functionality of CircleCI Releases, you'll need to install two components. First, deploy the CircleCI Release agent via Helm into your Kubernetes cluster. This agent monitors the specified namespace(s) and reports deployments back to the CircleCI UI. Additionally, consider opting in to use Argo Rollouts for advanced rollout and rollback strategies.

### Learn More
If you're interested in diving deeper and getting started with CircleCI Releases, check out the Release overview page on the CircleCI documentation: [Release Overview](https://circleci.com/docs/release/releases-overview/)

