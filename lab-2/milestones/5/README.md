## Milestone 5: Enhancing CI/CD Flexibility with Dynamic Configuration

### Overview

In the previous labs, we have been working with a single configuration file. While this setup suffices for most repositories, particularly those following a microservice structure, it poses challenges for monorepos. What if you have multiple services within a single repository? Would you want to build the entire project each time, or only the parts that have changed?

Dynamic configuration enables the use of two configuration files: the `setup` config and the "normal" configuration file. The setup config functions similarly to a standard configuration file but with an additional capability – it can instruct CircleCI to continue with another configuration. The second configuration file is your typical configuration file.

When using dynamic config for monorepos, the setup config can analyze which parts of the code have changed and instruct CircleCI to only run the relevant parts. For instance, if your monorepo consists of a backend, middleware, and frontend, and you modify code only in the backend, dynamic config allows you to identify the changed files in the backend config and run only that part.

CircleCI supports more complex monorepo use cases, such as always building a service if another service has changed, like continuously testing your middleware if changes are made to the backend.

Dynamic config isn't limited to monorepos; it can be used for various purposes. For example, one significant use case is fetching a configuration file from a remote source and instructing CircleCI to run it. This capability is crucial for platform teams aiming to provide developers with a golden path. By being prescriptive on how repositories are built based on languages or tools used, platform teams can fetch curated config files tailored for specific projects, streamlining the CI/CD experience for developers.

Pairing dynamic config with Config Policies creates a seamless, enforceable, and auditable CI/CD experience.

### Steps

1. **Rename Main Config File:**
   - Rename the existing main configuration file to `main.yml`.

2. **Utilize the Setup Configuration:**
   - Rename the `setup.yml` file to `config.yml` and move it into the `.circleci` folder.

3. **Run Pipeline and Verify Dynamic Config:**
   - Execute the pipeline and verify that dynamic config is functioning. Expect the pipeline to fail initially due to config policies.

4. **Update Config Policies:**
   - Adjust the config policies to accommodate dynamic config.

5. **Rerun Pipeline and Verify Functionality:**
   - Run the pipeline again and ensure that everything is working correctly.

### Objectives

- Successfully rename the main configuration file and utilize the setup configuration.
- Verify that dynamic configuration is functioning as expected.
- Adjust config policies to accommodate dynamic config.
- Rerun the pipeline and ensure that all functionality is working correctly.
