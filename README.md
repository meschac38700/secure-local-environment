
### Getting started

###### Generate credentials for the dashboard

```bash
htpasswd -nbB $TRAEFIK_USER <password> > secrets/.htpasswd
chmod 600 secrets/.htpasswd
```

##### Create traefik network
```bash
docker network traefik
```

##### You are ready to run docker compose

```bash
docker compose up
```


### Let's Encrypt(ACME)
```bash
mkdir secrets
touch secrets/acme.json
chmod 600 secrets/acme.json
```



> [!NOTE] 
> Personal note:
> This project is located under the /projects/devops/traefik/docker directory
