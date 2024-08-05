vpc_name = "terraform-cicd-api-flask-project"
vpc_az = ["eu-west-1a", "eu-west-1b"]
vpc_cidr = "12.0.0.0/16"
cidr_public_subnet = ["12.0.1.0/24","12.0.2.0/24"]
cidr_private_subnet = ["12.0.3.0/24","12.0.4.0/24"]
public_key = "value"
instance_type = "t2.medium"
ec2_ami_id = "ami-0c38b837cd80f13bb"

bucket_name = "terraform-cicd-api-flask-project-bucket717"