variable "amis" {
  type = map

  default = {
    "sa-east-1" = "ami-08ae71fd7f1449df1"
  }
}

variable "cdris_acesso_remoto" {
    type = list
    default = ["200.219.132.75/32"]
}

variable "key_name" {
    default = "terraform-aws"  
}