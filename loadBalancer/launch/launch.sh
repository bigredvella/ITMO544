echo "This script builds instances for AWS EC2."

echo "Please enter how many instances to build: "
read $1

echo "Please enter the image-ID you'll use to build these instances: "
read $6

echo "Please enter the instance-type (based on your AWS location setting): "
read $5

echo "Please enter your key-name (the secure way you'll SSH into your instances): "
read $2

echo "Please enter your security-group ID: "
read $3

echo "Please enter your subnet-ID: "
read $4

aws ec2 run-instances --image-id $6 --count $1 --instance-type $5 --key-name $2 --security-group-ids $3 --subnet-id $4 --associate-public-ip-address —-user-date file://install-webserver.sh —-debug
