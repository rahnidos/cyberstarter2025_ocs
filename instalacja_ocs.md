# System operacyjny

# Przygotowania

OCS do pracy wymaga Apache z PHPem, bazy danych oraz perla, 

```bash
sudo apt install apache2 apache2-utils libapache2-mod-perl2 libapache-dbi-perl libnet-ip-perl libsoap-lite-perl libxml-simple-perl libdbi-perl libdbd-mysql-perl libnet-snmp-perl libarchive-zip-perl php php-mysql php-zip php-pclzip php-gd php-soap php-curl php-json php-xml php-mbstring mariadb-server mariadb-client -y
```

```bash
sudo mysql -u root -p
```

```sql
CREATE DATABASE ocs;
GRANT ALL PRIVILEGES ON ocs.* TO 'ocs'@'localhost' IDENTIFIED BY 'StrongDBPassword';
FLUSH PRIVILEGES;
EXIT;
```

```bash
sudo apt install gnupg2 curl -y
curl -sS http://deb.ocsinventory-ng.org/pubkey.gpg | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/ocs.gpg
```

```bash
echo "deb http://deb.ocsinventory-ng.org/debian/ bookworm main | sudo tee /etc/apt/sources.list.d/ocsinventory.list"
sudo apt update
sudo apt install ocsinventory-server ocsinventory-web
```
No i jeżeli chcemy też agenta
```bash
sudo apt install ocsinventory-agent
```
