# etc

The location for variables that will be used by multiple components (in order they will be added):

* `global.tfvars` - store variables that are specific to the entire account such as account ID (optional)
* `{region}.tfvars` - store variables that are region specific here (optional)
* `group_{group}.tfvars` - variables that may be specific to different teams or groups (optional)
* `env_{region}_{environment}.tfvars` - (mandatory except when bootstrapping)
* `versions_{region}_{environment}.tfvars` - (optional)
* Note there is also the ability to incorporate a variables file from the S3 storage as `dynamic.tfvars` but it is suggested that this be avoided where possible.

## Examples

### environment

Dynamic filename for example `env_eu-west-1_development.tfvars`

```json
environment = "development"

default_tags = {
  "Project"     = "myproject"
  "Environment" = "development"
  "Owner"       = "My Project Manager"
  "Client"      = "My Client"
}
```
### global

Static filename `global.tfvars`

```json
project        = "myproject"
aws_account_id = "012345678901"
```

### versions

Dynamic filename `versions_eu-west-1_development.tfvars`

```json
my_example_docker_app_version="0.0.1"
```

### group

Dynamic filename for example `group_devops.tfvars`

### region

Dynamic filename for example `eu-west-2.tfvars`

```json
terraform_state_bucket = "myproject-terraformscaffold-012345678901-eu-west-2"
aws_region             = "eu-west-2"
```