resource "aws_ec2_transit_gateway" "main" {
    amazon_side_asn                 = var.amazon_side_asn
    auto_accept_shared_attachments  = var.auto_accept_shared_attachments
    description                     = var.transit_gateway_name

    tags = merge(
        { "Name" = coalesce(var.transit_gateway_name, "${local.resource_prefix}-transit-gateway") },
        var.tags
    )
}
