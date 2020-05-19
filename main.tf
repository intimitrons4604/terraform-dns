provider "aws" {
  version = "~> 2.0"
  region  = "us-west-2"
}

resource "aws_route53_zone" "domain" {
  name = "intimitrons.ca."
  tags = {
    "trons:environment" = "production"
    "trons:service"     = "dns"
    "trons:terraform"   = "true"
  }
}
