#!/bin/bash
yum update -y
amazon-linux-extras enable postgresql14
yum install -y postgresql-server postgresql-contrib
postgresql-setup --initdb
systemctl start postgresql
systemctl enable postgresql
sed -i 's/ident/md5/g' /var/lib/pgsql/data/pg_hba.conf
systemctl restart postgresql
sudo -u postgres psql -c "ALTER USER postgres PASSWORD 'postgres123';"
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
systemctl restart sshd
echo "ec2-user:TechCorp2024!" | chpasswd