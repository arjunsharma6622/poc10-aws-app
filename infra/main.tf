data "aws_ami" "ubuntu" {
    most_recent = true

    owners = ["amazon"]

    filter {
        name = "name"
        values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-20251212"]
    }
}


resource "aws_instance" "my_ec2" {
    ami = data.aws_ami.ubuntu.id
    instance_type = "t3.micro"

    key_name = var.key_pair_name

    vpc_security_group_ids = [ 
        aws_security_group.poc10_sg.id
    ]

    subnet_id = var.subnet_id

    tags = {
        Name = "poc10-linux-vm"
    }

}