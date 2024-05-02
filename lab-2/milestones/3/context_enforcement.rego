# All policies start with the org package definition
package org

# import CircleCI specific helper functions
import data.circleci.config

# Declare a policy name
policy_name["context_enforcement"]

# Declare a rule
rule_contexts_allowed_by_project_ids = config.contexts_allowed_by_project_ids(
    ["d4dcf1f2-9adf-4e70-a92c-bd751a7c3bd1"],
    ["ambassador"]
)

# Enable the rule
enable_hard["rule_contexts_allowed_by_project_ids"]
