# All policies start with the org package definition
package org

# import CircleCI specific helper functions
import data.circleci.config

# Declare a policy name
policy_name["context_enforcement"]

# Declare a rule
rule_contexts_allowed_by_project_ids = config.contexts_allowed_by_project_ids(
    ["dc9a5fcf-95ac-4b1e-86cd-1f566ca41062"],
    ["Lab2"]
)

# Enable the rule
enable_hard["rule_contexts_allowed_by_project_ids"]
