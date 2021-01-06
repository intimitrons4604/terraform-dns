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
  name    = "@"
  type    = "TXT"
  ttl     = 300
  records = ["google-site-verification=BsdsEfumykT04H9iMMz-dmWPkDgmknGNPtq0Moq_diw"]
}
