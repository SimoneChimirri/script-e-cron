# script-e-cron
Compito di Linux server

Script di Backup Giornaliero della Home

Questo progetto contiene uno script Bash (backup.sh) che esegue automaticamente il backup della home di un utente Linux in /opt/backup, mantenendo una cronologia degli ultimi 7 giorni.

📂 Funzionalità

Backup giornaliero della home di un utente (/home/<utente>).

Compressione dell’intera home in un file .tar.gz con data nel nome.

Conservazione automatica solo degli ultimi 7 backup (i più vecchi vengono eliminati).

Pianificazione automatica con cron.

- Incluso nel codice:
- 
permessi di scrittura su /opt/backup;

cron attivo e funzionante;

esecuzione del backup ogni giorno alle 2:00, con '0 2 * * * /usr/local/bin/backup_home.sh >> /var/log/backup_home.log 2>&1';

i file di backup verranno salvati in: /opt/backup/backup-YYYY-MM-DD.tar.gz
