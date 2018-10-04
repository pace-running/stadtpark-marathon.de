resource "aws_subnet" "pace-vpc-subnet1" {
  vpc_id            = "${aws_vpc.pace-vpc.id}"
  cidr_block        = "10.0.0.0/24"
  availability_zone = "eu-central-1a"

  tags {
    Name = "pace-vpc-subnet"
  }
}

resource "aws_subnet" "pace-vpc-subnet2" {
  vpc_id            = "${aws_vpc.pace-vpc.id}"
  cidr_block        = "10.0.1.0/24"
  availability_zone = "eu-central-1b"

  tags {
    Name = "pace-vpc-subnet"
  }
}

resource "aws_subnet" "pace-vpc-subnet-redis" {
  vpc_id            = "${aws_vpc.pace-vpc.id}"
  cidr_block        = "10.0.2.0/24"
  availability_zone = "eu-central-1b"

  tags {
    Name = "pace-vpc-subnet"
  }
}

resource "aws_subnet" "pace-vpc-subnet-db-1" {
  vpc_id            = "${aws_vpc.pace-vpc.id}"
  cidr_block        = "10.0.3.0/24"
  availability_zone = "eu-central-1a"

  tags {
    Name = "pace-vpc-subnet-db-1"
  }
}

resource "aws_subnet" "pace-vpc-subnet-db-2" {
  vpc_id            = "${aws_vpc.pace-vpc.id}"
  cidr_block        = "10.0.4.0/24"
  availability_zone = "eu-central-1b"

  tags {
    Name = "pace-vpc-subnet-db-2"
  }
}

output "subnet1-id" {
  value = "${aws_subnet.pace-vpc-subnet1.id}"
}

output "subnet2-id" {
  value = "${aws_subnet.pace-vpc-subnet2.id}"
}

output "redis-subnet-id" {
  value = "${aws_subnet.pace-vpc-subnet-redis.id}"
}

output "db-subnet-id-1" {
  value = "${aws_subnet.pace-vpc-subnet-db-1.id}"
}

output "db-subnet-id-2" {
  value = "${aws_subnet.pace-vpc-subnet-db-2.id}"
}
