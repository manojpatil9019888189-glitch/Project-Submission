# Task 5: Firewall Configuration

## Steps:
1. Installed UFW
2. Allowed SSH from specific IP
3. Allowed HTTP (80)
4. Allowed port 8000
5. Enabled firewall

## Commands:
sudo apt install ufw
sudo ufw allow from <ip> to any port 22
sudo ufw allow 80
sudo ufw allow 8000
sudo ufw enable

## Result:
Firewall secured server while allowing required services
<img width="1914" height="1005" alt="Screenshot 2026-03-25 165308" src="https://github.com/user-attachments/assets/53f88594-f9d3-463c-99b6-0938cf29f5f8" />
<img width="1911" height="1023" alt="Screenshot 2026-03-25 165317" src="https://github.com/user-attachments/assets/f203244b-e1f1-4642-8340-df4f73330951" />

