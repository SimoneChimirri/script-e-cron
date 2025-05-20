sudo mkdir -p /opt/backup
sudo chown root:root /opt/backup
sudo chmod 700 /opt/backup

tar -czf /opt/backup/backup-$(date +"%Y-%m-%d").tar.gz /home

sudo systemctl start cron
sudo systemctl enable cron

crontab - e

0 2 * * * /percorso/assoluto/backup_home.sh >> /var/log/backup_home.log 2>&1

find /opt/backup -name "backup-*.tar.gz" -mtime +7 -exec rm {} \;

echo "Backup completato: /opt/backup/backup-$(date +"%Y-%m-%d").tar.gz"
