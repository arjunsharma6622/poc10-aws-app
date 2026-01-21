resource "aws_security_group" "poc10_sg" {
    name = "poc10-ec2-sg"
    description = "Security group for POC-10 EC2"
    vpc_id = var.vpc_id

    # Inbound
    ingress = [
        # SSH
        {
            description = "SSH Access"
            from_port = 22
            to_port = 22
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
            ipv6_cidr_blocks = []
            prefix_list_ids = []
            security_groups = []
            self = false
        },
        # Nodejs Expess App PORT 8080
        {
            description = "Nodejs App PORT"
            from_port = 8080
            to_port = 8080
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
            ipv6_cidr_blocks = []
            prefix_list_ids = []
            security_groups = []
            self = false
        }
    ]

    # Outbound
    egress = [ 
        {
            description = "For all outgoing traffic"
            from_port = 0
            to_port = 0
            protocol = "-1"
            cidr_blocks = ["0.0.0.0/0"]
            ipv6_cidr_blocks = []
            prefix_list_ids = []
            security_groups = []
            self = false
        }
    ]

    tags = {
      Name = "poc10-ec2-sg"
    }

}