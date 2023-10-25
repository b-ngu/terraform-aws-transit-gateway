output "transit_gateway_id" {
    description = "The ID of the Transit Gateway"
    value       = aws_ec2_transit_gateway.main.id
}

output "transit_gateway_arn" {
    description = "The ARN of the Transit Gateway"
    value       = aws_ec2_transit_gateway.main.arn
}

output "transit_gateway_owner_id" {
    description = "The ID of the AWS account that owns the Transit Gateway"
    value       = aws_ec2_transit_gateway.main.owner_id
}
