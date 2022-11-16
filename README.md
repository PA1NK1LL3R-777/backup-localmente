# backup-localmente

Faça Backup de seus arquivos para outras repartições principalmente para hds externos ou usando rclone + cloud e montando como uma repartição!

# Baixe o Script

```bash
wget https://raw.githubusercontent.com/PA1NK1LL3R-777/backup-localmente/main/backup-completo.
```
# O que deve ser editado?

```bash
# Diretorio de backup
backup_path="/var/www/nextcloud"

# Diretorio para aonde o backup vai. 
external_storage="/root/mega/nextcloudbackup"
```

# Dê permissão de execução do Script

```bash
chmod u+x backup-completo.sh
```

# Mova o script para alguma localidade

Exemplo

```bash
mv -v backup-completo.sh /usr/local/sbin/
```

# Adcione no crontab

Entre em modo root, caso não já esteja.

```bash
sudo su -
```

Agora adcione a linha no crontab

```bash
crontab -e
```

Você vai escolher a quantidade de vezes que o backup será feito, exemplo:
```bash

```
