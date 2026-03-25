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



<img width="1910" height="1019" alt="Screenshot 2026-03-25 134414" src="https://github.com/user-attachments/assets/4bcd0e9b-341a-4a91-a422-4e1148d65c17" />
<img width="1918" height="1018" alt="Screenshot 2026-03-25 134451" src="https://github.com/user-attachments/assets/27a6615f-79b7-4c09-be4f-16f714e3fdd3" />
<img width="1919" height="1014" alt="Screenshot 2026-03-25 134520" src="https://github.com/user-attachments/assets/b52b1896-b8fc-4815-a860-51cfaa9e77cf" />
<img width="1914" height="1016" alt="Screenshot 2026-03-25 134536" src="https://github.com/user-attachments/assets/ad8e10f6-883c-4dcb-b4be-bea386aa9c0a" />

