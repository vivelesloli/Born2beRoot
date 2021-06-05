# Born2beRoot
a faire corriger

Log as root
apt install sudo
adduser root sudo
adduser cnavone sudo
addgroup user42
adduser cnavone user42
touch /var/log/sudo/sudolog
apt install vim
sudo visudo : 
Defaults        env_reset,badpass_message="Je dis ça je dis rien mais il reste peu de tentatives..
Defaults        mail_badpass
Defaults        requiretty
Defaults        logfile="/var/log/sudo/sudo.log"
Defaults        secure_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin"
vim /etc/login.defs
PASS_MAX_DAYS 30
PASS_MIN_DAYS 2
PASS_WARN_AGE 7
apt install libpam-pwquality
vim /etc/pam.d/common-password
minlen=10 ucredit=-1 dcredit=-1 maxrepeat=3 reject_username difok=7 enforce_for_root
vim /etc/ssh/sshd_config
Port 4242
PermitRootLogin no
ssh -V
systemctl status ssh
apt install ufw
ufw enable
ufw allow 4242
sudo ufw status
crontab -u root -e */10 * * * * sh /home/cnavone/monitoring.sh | wall
sudo adduser <username>
getent passwd <username>
sudo apt-get install apparmor
apt-get install apparmor-utils
sudo apparmor_status
- "apt-get install selinux-basics selinux-policy-default auditd"
- "selinux-activate"
