Connect to cloudflare account

```bash
docker run -it --rm -v $PWD/.cloudflared:/home/nonroot/.cloudflared cloudflare/cloudflared:latest tunnel login
```

Create a cloudflare tunnel 

```bash
docker run -it --rm -v $PWD/.cloudflared:/home/nonroot/.cloudflared cloudflare/cloudflared:latest tunnel create my-tunnel
```


Declare cloudflare tunnel to your public domain (OR sub-domain)

```bash
docker run -ti --rm -v $PWD/.cloudflared:/home/nonroot/.cloudflared cloudflare/cloudflared:latest tunnel route dns my-tunnel lab.eliam-lotonga.fr
```


Run the tunnel

```bash
docker run -d --name cloudflared -v $PWD/.cloudflared:/home/nonroot/.cloudflared cloudflare/cloudflared:latest tunnel run my-tunnel
```

> [!WARNING]
> If you have an issue with permissions on the config/.cloudflared directory,
> consider running the following command and trying again.
```bash
sudo chmod 755 config/.cloudflared/*
```

### Manual approach

[Docs](https://developers.cloudflare.com/cloudflare-one/connections/connect-networks/get-started/create-remote-tunnel-api/)
