# VPC in EC2.

The Concept VPC- Virtual private cloud is so importance in EC2 that the whole EC2 instance and architecture is depend upon: i tried to learn VPC deeply as these is properly linked
with DevOps daily workflow.

### VPC Core Components:
1. Subnet, CIDR
2. Router
3. Internet gateway (IGW)
4. NAT gateway
5. Security group
6. IP's
7. Network Access Control List

### In simple VPC is act as whole secure architecture of EC2, Here we manage the security, Networking, Access, Subnetting.
### This is the part i think takes alot time to understand for me, But i tried to undersatnd and go as deeper i can!!

### VPC creation
1. VPC and Other
2. Name- Learn
3. IPv4 CIDR block: 1.1.1.0/24   Getting 256 Ip range, useable: 254
4. Avalibilty Zone: 2 (default) 
5. Subnet: 2 Public and 2 Private. each for 2 avaliblity zones
6. Route Table: Public and Private
7. IGW- (default)\
8. NACL associate with 4 subnet
9. Done

### Create a Instanec within Learn-VPC

### 
Now the whole concept of VPC is understood that how the all functions in VPC act as a secrurity and a private network inside a cloud.
How user first interact with NACL--> Pubilc-Subnet-->Route-table-->Security-Group (privatesubnet)-->EC2-Instance

Also we can control the traffic using VPC if there is alot of instances inside the VPC act as a Network-Admin

## I will try to play more with VPC to understand it more deeply...
