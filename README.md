<h1 align="center">31261 - The Sensor DB</h1>
<h5 align="center">15/05/2022</h5>

![the-sensor-db](https://user-images.githubusercontent.com/19354579/168476334-f9ab3256-b5da-4387-a4c1-787a94002b27.png)

<h3 align="center">Description</h3>

This is based on my implementation of SQLIA vulnerable web app called 'The Gadget Shop'. With the titles and database renamed to 'sensors', to fit the context of IoT Security. For the purposes of project demonstration to my supervisors.

<h3 align="center">Instructions</h3>

1. Install PHP 7.3
- `sudo apt update`
- `sudo apt install php7.3 php7.3-mysql php7.3-cli`

2. Install MySQL 8.0
- `sudo apt mysql-server`

3. Initialise the MySQL database
- `sudo vim /etc/mysql/mysql.conf.d/mysqld.cnf`
```
# append the following to the [mysqld] section excluding this comment
[mysqld]
secure_file_priv = ""
```
- `sudo mysql < db/init_db.sql`

4. Apply/Remove Firewall Rules
- `sudo bash ufw-rules.sh on`
- `sudo bash ufw-rules.sh off`

4. Run the application
```
cd 31261-The-Sensor-DB
php -S localhost:5000
```

<h4 align="center">technologies used</h4>
<div align="center">
   <img alt="bootstrap" src="https://img.shields.io/badge/-Bootstrap-black?logo=bootstrap">
   <img alt="mysql" src="https://img.shields.io/badge/-MySQL-black?logo=mysql&logoColor=cyan">
   <img alt="php" src="https://img.shields.io/badge/-PHP-black?logo=php">
</div>
