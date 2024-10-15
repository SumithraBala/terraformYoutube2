provider "aws" {
  region     = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}


#default ws resources

resource "aws_instance" "Sumiapp_server3" {
  ami           = "ami-066784287e358dad1"
  instance_type = var.instance_type

  tags = {
    Name = "TFyoutube3"
  }
}

# Dev-specific resources
resource "aws_instance" "dev_instance" {
  count         = terraform.workspace == "dev" ? 1 : 0
  ami           = "ami-066784287e358dad1"
  instance_type = "t2.micro"
  tags = {
    Name = "dev_instance1"
  }
  # Other dev-specific settings...
}

# QA-specific resources
resource "aws_instance" "qa_instance" {
  count         = terraform.workspace == "qa" ? 1 : 0
  ami           = "ami-066784287e358dad1"
  instance_type = "t2.micro"
  tags = {
    Name = "qa_instance1"
  }
  # Other QA-specific settings...
}
