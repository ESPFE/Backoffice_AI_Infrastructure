Setup Server:
 - Install Debian 12
 - Run Setup Scripts:
    - Setup_Debian.sh
    - Setup_Docker.sh
    - Setup_Nvidia_Container_Toolkit.sh
- gnerate tls certs an place them to /certs/
- setup path to tls certs in /dynamic/tls.yml
- change .env to your needs:
    - DOMAIN_NAME
    - SUBDOMAIN
    - SSL_EMAIL
- build containers: 
    docker compose up --build

- Start containers:
    docker compose up

- Stop containers:
    docker compose down