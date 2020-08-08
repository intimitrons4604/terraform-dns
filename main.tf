provider "aws" {
  version = "~> 3.0"
  region  = "us-west-2"
}

resource "aws_route53_zone" "domain" {
  name = "intimitrons.ca"
  tags = {
    "trons:environment" = "production"
    "trons:service"     = "dns"
    "trons:terraform"   = "true"
  }
}

resource "aws_route53_record" "dummy" {
  zone_id = aws_route53_zone.domain.zone_id
  name    = "tf-dummy"
  type    = "TXT"
  ttl     = 300
  records = ["tf-dummy"]
}
