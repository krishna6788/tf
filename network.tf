##ACTIVITY-3##
#1.CREATE A NETWORK
#2.ADD SUBNET ONE
#3.ADD SUBNET TWO
#4.RENAME THE SUBNET ONE WITH WEB AND SUBNET TWO WITH APP WITH "terraform state mv"
#5.NOW ADD ONE MORE SUBNET DB
#6.REMOVE THE STATE OF  DB USING "terraform state rm"


resource "aws_vpc" "RENAME" {
    cidr_block = "192.168.0.0/16"
    tags = {
      Name = "RENAME"
    }
}

resource "aws_subnet" "ONE" {
    vpc_id = aws_vpc.RENAME.id
    cidr_block = "192.168.0.0/24"
    tags = {
        Name = "ONE"
    } 
}

resource "aws_subnet" "TWO" {
    vpc_id = aws_vpc.RENAME.id
    cidr_block = "192.168.1.0/24"
    tags = {
        Name = "TWO"
    } 
}

resource "aws_subnet" "Db" {
    vpc_id = aws_vpc.RENAME.id
    cidr_block = "192.168.2.0/24"
    tags = {
        Name = "Db"
    } 
}

