provider "aws" {
    version = "> 4.0"
    region  = "sa-east-1"
}

resource "aws_instance" "dev3" {
    ami = var.amis["sa-east-1"]
    instance_type = "t2.micro"
    key_name = var.key_name
    tags = {
      Name = "dev3"
    }
    vpc_security_group_ids =["sg-06c821315bd83b7d9"]
    depends_on = [
      aws_dynamodb_table.dynamodb-homologacao
    ]
}


/*resource "aws_s3_bucket" "dev3" {
    bucket = "rmerceslabs-dev3"
    acl = "private"

    tags = {
      Name = "rmerceslabs-dev3"
    }
}
*/

resource "aws_dynamodb_table" "dynamodb-homologacao" {
    name           = "GameScores"
    billing_mode   = "PAY_PER_REQUEST"
    hash_key       = "UserId"
    range_key      = "GameTitle"

  attribute {
    name = "UserId"
    type = "S"
  }

  attribute {
    name = "GameTitle"
    type = "S"
  }
}