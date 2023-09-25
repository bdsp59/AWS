terraform { 
  required_providers { //São os provedores necessários
    aws = {//Nesse caso, vamos usar o aws
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {//Colocamos as informações do servidor, se formos usar mais de um temos que criar um bloco desse para cada
  region  = "us-east-2"
  profile = "default"
}

resource "aws_instance" "app_server" { //Aqui são informações sobre a instância que vamos criar, ou seja, o recurso que vamos utilizar
  ami           = "ami-024e6efaf93d85776"
  instance_type = "t2.micro"
  key_name = "bruno_ohio"

  tags = {
    Name = "Primeira_Instancia"
  }
}
