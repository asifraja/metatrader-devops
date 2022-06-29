### NginX Proxy Manager

# config.json
=============
{
  "database": {
    "engine": "mysql",
    "host": "db",
    "name": "npm",
    "user": "npm_db_user",
    "password": "dh1axx12DDasXa",
    "port": 3306
  }
}


#docker-compose.yml
===================
version: '3'
services:
  app:
    image: 'jc21/nginx-proxy-manager:latest'
    ports:
      - '80:80'
      - '81:81'
      - '443:443'
    volumes:
      - ./config.json:/app/config/production.json
      - ./data:/dataj
      - ./letsencrypt:/etc/letsencrypt
  db:
    image: 'jc21/mariadb-aria:10.4'
    environment:
      MYSQL_ROOT_PASSWORD: 'd12Dh1axxDasXa'
      MYSQL_DATABASE: 'npm'
      MYSQL_USER: 'npm_db_user'
      MYSQL_PASSWORD: 'dh1axx12DDasXa'
    volumes:
      - ./data/mysql:/var/lib/mysql

# to see what is the docker IP Address
ip addr show docker0
