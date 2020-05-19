output "fqdn" {
  description = "The FQDN for the zone"
  value       = aws_route53_zone.domain.name
}

output "zone_id" {
  description = "The Route53 Zone ID for fqdn"
  value       = aws_route53_zone.domain.zone_id
}

output "name_servers" {
  description = "The assigned name servers for fqdn"
  value       = aws_route53_zone.domain.name_servers
}
