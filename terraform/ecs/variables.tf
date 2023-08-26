variable "availability_zones" {
  type        = list(string)
  description = "AWS Availability Zones"
  default = [
    "us-west-2a",
    "us-west-2b",
    "us-west-2c",
    "us-west-2e",
  ]
}

variable "key_pair" {
  description = "AWS EC2 Key Pair Pem"
  default     = "MyKeyPair"
}

variable "ami" {
  description = "Amazon Linux 2 AMI x86"
  default     = "ami-002c2b8d1f5b1eb47"
}

variable "instance_type" {
  description = "AWS Instance Type"
  default     = "t2.micro"
}

variable "iam_profile" {
  description = "Name of AWS IAM Profile"
  default     = "ec2ECSRole"
}

variable "asg_min" {
  description = "Min Instances"
  default     = 3
}

variable "asg_max" {
  description = "Max Instances"
  default     = 5
}

variable "asg_desired" {
  description = "AWS Desired capacity for ASG"
  default     = 3
}

variable "docker_img_name" {
  type        = string
  description = "Name of the docker image being deployed"
  default     = "ariv3ra/aws-demo-coderi2021"
}

variable "docker_img_tag" {
  type        = string
  description = "The docker image TAG being deployed"
  default     = "latest"
}

variable "ecs_desired_count" {
  description = "Number of desired ECS Tasks to deploy"
  default     = 3
}

