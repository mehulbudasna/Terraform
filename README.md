# Terraform snippet for deploying ASG in private subnet behind ALB

Below is the architecture to be implemented:
![Screenshot from 2021-11-20 15-25-50](https://user-images.githubusercontent.com/21075788/142722126-ea486c98-4e94-4492-9cf8-172456154eae.png)

# Prerequisites:
1. AWS account
2. IAM role with necessary permissions
3. Terraform & AWS CLI configured on machine from which the scripts are to be run
4. AMI Id (Ununtu OS) for particular region.
5. Key Pair name for Praticular Region.

# The files included are:

1)  main.tf: main.tf file contains the terraform script to create necessary resources like below.
      - Create VPC
      - Create Public Subnet1
      - Create Public Subnet2 
      - Create Private Subnet1
      - Create Private Subnet2
      - Create Public Route Table
      - Create route table association of public subnet1
      - Create route table association of public subnet2
      - Create Internet Gateway 
      - Create EIP for NAT GW1  
      - Create NAT gateway1
      - Create EIP for NAT GW2 
      - Create NAT gateway2 
      - Create private route table for prv sub1
      - Create route table association betn prv sub1 & NAT GW1
      - Create private route table for prv sub2
      - Create route table association betn prv sub2 & NAT GW2
      - Create security group for load balancer
      - Create security group for webserver
      - Create Launch config
      - Create Auto Scaling Group
      - Create Target group
      - Create ALB
      - Create ALB Listener
3)  variables.tf: for declaring variables being used in the main script
4)  terraform.tfvars: for defining/overriding the varibles
5)  init_webserver.sh: User data script for launch config which installs & starts nginx server and creates mount points

# Changes Required to RUN Terraform snippet

1. Need to replace AMI ID according to Region.
2. Need to change Region
3. Need to replace keyname according to Region.

# Follow Below Steps to RUN Terraform snippet

1. Create folder and Clone this repo.
2. Change required variable value
3. Initialize terraform using 
```bash
terraform init
```
4. Show changes required by the current configuration 
```bash
terraform plan
```
5. Create or update infrastructure 
```bash
terraform apply
```
Your infra is ready to use now.

6. Destroy previously-created infrastructure 
```bash
terraform destroy
```
# Output

Hit Load balancer Hostname/URL/DNS .
![Screenshot from 2021-11-20 14-09-09](https://user-images.githubusercontent.com/21075788/142722039-9a29e793-8e3e-4ada-8fd2-93b352c9d86a.jpg)
