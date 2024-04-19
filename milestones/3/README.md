Added in testing job with pytest. Also leaning into reusable config by adding in commands for testing and building. Plus using reusable executors. 

The test job should fail as we did not install any drivers for the browser. We can use ssh debugging to figure out we are missing the driver. 