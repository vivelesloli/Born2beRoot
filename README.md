# Born2beRoot
a faire corriger
installation +
Select LVM encrypt with separated /home
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
  
  
  https://waytolearnx.com/2019/04/difference-entre-centos-et-debian.html
  https://bluebearsit.com/machine-virtuelle-comment-ca-marche/#:~:text=La%20virtualisation%20permet%20d'accroitre,d'intrusion%20de%20type%20malware.
  https://unix.stackexchange.com/questions/767/what-is-the-real-difference-between-apt-get-and-aptitude-how-about-wajig#:~:text=10%20Answers&text=The%20most%20obvious%20difference%20is,whereas%20apt%2Dget%20does%20not.&text=aptitude%20will%20automatically%20remove%20eligible,The%20commands%20for%20upgrade%20vs.
 https://debian-handbook.info/browse/fr-FR/stable/sect.apparmor.html
  https://ubuntuplace.info/questions/583/quest-ce-que-lvm-et-quoi-sert-il
  https://demoniak.ch/debian-firewall-avec-ufw/
  https://www.it-connect.fr/chapitres/quest-ce-que-ssh/
  https://doc.fedora-fr.org/wiki/SSH_:_Authentification_par_cl%C3%A9#:~:text=L'authentification%20%3A%20chaque%20connexion%20SSH,'utilisateur%20(~%2Fssh%2F.
  https://qastack.fr/programming/9619362/running-a-cron-every-30-seconds

  adduser cnavone sudo + reboot + test via sudo -v
  grep "pi" /etc/group
  
  Defaults        log_input,log_output
Defaults        iolog_dir="/var/log/sudo"
