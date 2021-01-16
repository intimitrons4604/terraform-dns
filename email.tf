resource "aws_route53_record" "google_dkim" {
  zone_id = aws_route53_zone.domain.zone_id
  name    = "google._domainkey"
  type    = "TXT"
  ttl     = 300
  records = ["v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAlQARtwLknjW3invRME00ZN2Q+0cvuh7aI6qQuXUKS0h5JnbU/r4XRNKe73AUM2bVwj1fskmYCVYawkpYKzY53CFMv9/juSuX7lGcEIxZs4Pm/iDMeEZgCgkk+97UE9KuIKaoXl2wrTFhoVWiW1aeMlNkDKgJIsw0cow/jlYbRsn2bKCiGfMqxK/Yzu06usZN/\"\"wSmMBvR1w8WAEshYwOFNDqZTJVU5h+ONagp4SKaYMzki7516ixxG27ZsEmaJrIQmUEIbfeUqWlXNz1+lnbHmHMMlKeqQsQvjot7p79D20So6S4djZA1jcRT4qlbo1f4ehEA7q7Qehq7piKXq3jC3wIDAQAB"]
}
