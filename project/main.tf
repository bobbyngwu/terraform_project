terraform{
    required_providers{
        aws = {
            source = "hashicorp/aws"
            version = "~>3.27"
        }
    }
    required_version = ">=0.14.9"
    backend "s3" {
    bucket         = "dmw-state-2"
    key            = "global/s3/dmw-2.tfstate"
    region         = "us-east-2"
    # Replace this with your DynamoDB table name!
    dynamodb_table = "dmw-up-and-running-locks"
    encrypt        = true
  }
}

provider "aws" {
    profile = "default"
    region = "us-east-2"
}
