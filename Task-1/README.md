# Task 1: Server Setup and SSH Configuration

## Objective
To configure secure server access using SSH and implement passwordless authentication.

---

## Server Details
- Platform: AWS EC2
- OS: Ubuntu
- Instance Type: Free Tier

---

## Steps Performed

### 1. Connect to EC2
ssh -i devops-key.pem ubuntu@<public-ip>

### 2. Update Server
sudo apt update -y
sudo apt upgrade -y

### 3. Create User
sudo adduser devops
sudo usermod -aG sudo devops

### 4. Setup SSH Key Authentication
sudo mkdir -p /home/devops/.ssh
sudo cp /home/ubuntu/.ssh/authorized_keys /home/devops/.ssh/
sudo chown -R devops:devops /home/devops/.ssh
sudo chmod 700 /home/devops/.ssh
sudo chmod 600 /home/devops/.ssh/authorized_keys

### 5. Disable Password Login
sudo nano /etc/ssh/sshd_config

Update:
PasswordAuthentication no
PermitRootLogin no

Restart SSH:
sudo systemctl restart ssh

### 6. Verify Login
ssh -i devops-key.pem devops@<public-ip>

---

## Outcome
- Passwordless SSH login successful
- Secure server configuration completed
