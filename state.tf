terraform{
    backend "s3" {
        bucket = "my-cicd-state-bucket"
        encrypt = true
        key = "terraform.tfstate"
        region = "us-west-2"
    }
}

provider "aws" {
    region = "us-west-2"
}