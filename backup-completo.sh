#!/usr/bin/env sh

# Diretorio de backup
backup_path="/var/www/nextcloud"

# Diretorio para aonde o backup vai 
storage_backup="/root/mega/nextcloudbackup"

# Formato do arquivo 
date_format=$(date "+%d-%m-%Y")
final_archive="backup-$date_format.tar.gz"

# Aonde o log será armazenado? 
log_file="/var/log/daily-backup.log"

#######################
# Criando a pasta do backup, caso nao esteja criada

if [ ! -d $storage_backup ]; then
  mkdir -p $storage_backup
fi

#######################
# Inicio do backup.
#######################
if tar -czSpf "$storage_backup/$final_archive" "$backup_path"; then 
   printf "[$date_format] BACKUP SUCESS.\n" >> $log_file 
else
   printf "[$date_format] BACKUP ERR000000R.\n"
   >> $log_file
fi

# Exclua os arquivos que tiverem mais de X dias.
find $external_storage -mtime +5
