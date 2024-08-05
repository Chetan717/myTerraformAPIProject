terraform {
  backend "s3" {
    bucket = "terraform-cicd-api-flask-project-bucket717"
    key = "./terraform.tfstate"
    region = "eu-west-1"
  }
}