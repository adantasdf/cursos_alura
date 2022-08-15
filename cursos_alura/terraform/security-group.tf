# resource "aws_security_group" "acesso-ssh-sa-east-1c" {
#     provider = "sa-east-1"
#     name = "acesso-ssh"
#     description = "acesso-sh"

#     ingress {
#         from_port        = 22
#         to_port          = 22
#         protocol         = "tcp"
#         cidr_blocks      = var.cdris_acesso_remoto
        
#     }
#     tags = {
#         Name = "ssh"
#     }
# }
