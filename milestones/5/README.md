In this milestone we add a new job to test our docker image we built in the build job. Since we want to avoid building the docker container twice, we are adding new reusable commands, one to save the docker image and one to load the docker image. 

Additionally, we are adding a command to run GOSS/dGOSS against the docker image to verify the image is doing what its suppose too do. 

We also save the test results so we can go to CircleCI's insights to gain further information about tests. 