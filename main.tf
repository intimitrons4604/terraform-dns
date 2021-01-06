provider "aws" {
  region = "us-west-2"
}

resource "aws_route53_zone" "domain" {
  name = "intimitrons.ca"
  tags = {
    "trons:environment" = "production"
    "trons:service"     = "dns"
    "trons:terraform"   = "true"
  }
}

resource "aws_route53_record" "google_g_suite_verification" {
  zone_id = aws_route53_zone.domain.zone_id
  name    = "laznepevzbrm"
  type    = "CNAME"
  ttl     = 300
  records = ["gv-sc7em4nloivnky.dv.googlehosted.com"]
}
