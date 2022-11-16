# backup-localmente

Faça Backup de seus arquivos para outras repartições principalmente para hd externos/hd de backups ou usando rclone + cloud montando como uma repartição! (Recomendado o rclone + cloud montando como uma repartição)

# Baixe o Script

```bash
wget https://raw.githubusercontent.com/PA1NK1LL3R-777/backup-localmente/main/backup-completo.
```
# O que deve ser editado?

Edite o arquivo com vim/vi ou nano

Exemplo:
```bash
vi backup-completo.sh
```
Ou
```bash
nano backup-completo.sh
```
Ou
```bash
vim backup-completo.sh
```

Caso você não saiba usar esses editores, pesquise rapidamente como usar no YouTube ou no seu navegador.


```bash
# Diretorio de backup
backup_path="/var/www/nextcloud"

# Diretorio para aonde o backup vai. 
external_storage="/root/mega/nextcloudbackup"
```

Em espefico o "/var/www/nextcloud" quê será a pasta que você quer fazer backup

E
"/root/mega/nextcloudbackup" que é o diretório para aonde vai o backup.


# Dê permissão para execução do Script

```bash
chmod u+x backup-completo.sh
```

# Mova o script para alguma localidade

Exemplo:

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
00 14 * * * /usr/local/sbin/backup-completo.sh
```
Nesse exemplo, o backup será feito uma vez por dia, as 2:00/14:00 PM.

Aconselho que pesquise como usar o crontab, assim você saberá como configurar da melhor forma que vá lhe atender.
