# Task 4: User and Permissions

## Steps:
1. Created user 'monitoruser'
2. Assigned ownership of /opt/container-monitor
3. Restricted access using chmod

## Commands:
sudo adduser monitoruser

sudo chown -R monitoruser:monitoruser /opt/container-monitor

sudo chmod -R 700 /opt/container-monitor

## Result:
Only monitoruser can access monitoring logs


## VERIFICATION COMMANDS
id monitoruser
ls -ld /opt/container-monitor
<img width="1913" height="1010" alt="Screenshot 2026-03-25 164340" src="https://github.com/user-attachments/assets/f538ae24-4666-4f25-a131-7720fedb1125" />
<img width="1908" height="1018" alt="Screenshot 2026-03-25 164350" src="https://github.com/user-attachments/assets/dee89c8c-1ad6-46b4-95a0-e943aee1e5fa" />
