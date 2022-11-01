resource "aws_internet_gateway" "main" {
    vpc_id = aws_vpc.main.id

    tags = {
        Name = var.project_name
    }
}

resource "aws_route_table" "main" {
    vpc_id = aws_vpc.main.id

    tags = {
        Name = format("%s-public-route", var.project_name)
    }
}

resource "aws_route" "public_internet_access" {
    route_table_id = aws_route_table.main.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
}