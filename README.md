# A sample repo which demonstrates the usage of "null-provider" and "count" meta-argument

### Prerequisites
- Git
- Terraform CLI
- AWS credentials

### Use case
The configuration is using `aws resource`, `null-resource` and `count` meta-argument for the creation of 3 ec2 instances.

### How to use
1. Clone the repo
```
git clone https://github.com/GitHuberkata/count-nullprovider.git
```
2. Navigate to the folder
cd count-nullprovider

3. Run the following commands
- `terraform init`
- `terraform plan`
- `terraform apply`

After apply we will have 3 ec2 created and local-exec will print out in the retrminal *"Total number of VMs created is: 3"*
