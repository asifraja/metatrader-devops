### Docker (Install / Upgrade)
https://docs.docker.com/engine/install/ubuntu/

https://docs.docker.com/engine/reference/commandline/container/
docker container ls
githokok



### NginX Proxy Manager
https://nginxproxymanager.com/
https://www.youtube.com/watch?v=cjJVmAI1Do4

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
    restart: always
    ports:
      - '80:80'
      - '81:81'
      - '443:443'
    volumes:
      - ./config.json:/app/config/production.json
      - ./data:/dataj
      - ./letsencrypt:/etc/letsencrypt
  db:
    image: 'jc21/mariadb-aria:latest'
    restart: always
    environment:
      MYSQL_ROOT_PASSWORD: 'd12Dh1axxDasXa'
      MYSQL_DATABASE: 'npm'
      MYSQL_USER: 'npm_db_user'
      MYSQL_PASSWORD: 'dh1axx12DDasXa'
    volumes:
      - ./data/mysql:/var/lib/mysql


docker-compose up -d

*Default credentials are:
username: admin@example.com
passwrod: changeme

 Create virtual host and then secure it. 

# to see what is the docker IP Address
ip addr show docker0

172.17.0.1


NEXT CLOUD
==========
version: '3'
services:
  nc:
    image: nextcloud:apache
    restart: always
    ports:
      - 80:80
    volumes:
      - nc_data:/var/www/html
    networks:
      - redisnet
      - dbnet
    environment:
      - REDIS_HOST=redis
      - MYSQL_HOST=db
      - MYSQL_DATABASE=nextcloud
      - MYSQL_USER=nc_db_user
      - MYSQL_PASSWORD=dh1axx12DDasXa
  redis:
    image: redis:alpine
    restart: always
    networks:
      - redisnet
    expose:
      - 6379
  db:
    image: mariadb:10.5
    command: --transaction-isolation=READ-COMMITTED --binlog-format=ROW
    restart: always
    volumes:
      - db_data:/var/lib/mysql
    networks:
      - dbnet
    environment:
      - MYSQL_DATABASE=nextcloud
      - MYSQL_USER=nc_db_user
      - MYSQL_ROOT_PASSWORD=d12Dh1axxDasXa
      - MYSQL_PASSWORD=dh1axx12DDasXa
    expose:
      - 3306
volumes:
  db_data:
  nc_data:
networks:
  dbnet:
  redisnet:


docker run -t -d -p 127.0.0.1:9980:9980 \
    -e 'domain=nc\\.apps\\.s8\\.kayani\\.cloud' \
    --restart always \
    --cap-add MKNOD \
    collabora/code


portainer/portainer
===================
docker volume create portainer-data
docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer-data:/data portainer/portainer-ce:latest

# docker-compose.yml 
version: '3'
services:
  portainer:
    image: portainer/portainer-ce:latest
    container_name: portainer
    restart: unless-stopped
    security_opt:
      - no-new-privileges:true
    volumes:
      - /etc/localtime:/etc/localtime:ro
      - /var/run/docker.sock:/var/run/docker.sock:ro
      - ./portainer-data:/data
    ports:
      - '8000:8000'
      - '9443:9443'
      - '9000:9000'



CE to EE
docker run -d -p 8000:8000 -p 9000:9000 -p 9443:9443 --name=portainer --restart=always --pull=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer-data:/data portainer/portainer-ee:latest


portainer:
https://raw.githubusercontent.com/portainer/templates/master/templates-2.0.json
https://raw.githubusercontent.com/Qballjos/portainer_templates/master/Template/template.json
https://raw.githubusercontent.com/technorabilia/portainer-templates/main/lsio/templates/templates-2.0.json

vscode:
tiWjIb1[`vSs

containers
==========
dockerhub.kayani.cloud
portainer.kayani.cloud
manage.kayani.cloud
remotely.codes