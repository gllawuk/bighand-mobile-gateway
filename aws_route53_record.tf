resource "aws_route53_record" "dns_record" {
  zone_id = data.aws_route53_zone.dns_zone.id
  name    = var.dns_record_name
  type    = "A"
  ttl     = "300"
  records = [azurerm_public_ip.pip.ip_address]
}
