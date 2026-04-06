#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)
cat > /var/www/html/index.html <<EOF
<h1>TechCorp Web Server</h1>
<p>Instance ID: $INSTANCE_ID</p>
EOF
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
systemctl restart sshd
echo "ec2-user:TechCorp2024!" | chpasswd