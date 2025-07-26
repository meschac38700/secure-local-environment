# Create cloudflare tunnel

You can use cloudflare web interface under `zero trust home` > `Networks` > `Tunnels` then `Create a tunnel`


### Using docker

Connect to a cloudflare account

```bash
docker run -it --rm -v $PWD/.cloudflared:/home/nonroot/.cloudflared cloudflare/cloudflared:latest tunnel login
```

```bash
docker run -it --rm -v $PWD/.cloudflared:/home/nonroot/.cloudflared cloudflare/cloudflared:latest tunnel create my-tunnel
```

Declare cloudflare tunnel to your public domain (OR sub-domain)

```bash
docker run -ti --rm -v $PWD/.cloudflared:/home/nonroot/.cloudflared cloudflare/cloudflared:latest tunnel route dns my-tunnel lab.eliam-lotonga.fr
```

Run the tunnel(Not necessary, docker-compose.yml has already a service for that)

```bash
docker run -d --name cloudflared -v $PWD/.cloudflared:/home/nonroot/.cloudflared cloudflare/cloudflared:latest tunnel run my-tunnel
```

> [!WARNING]
> If you have an issue with permissions on the config/.cloudflared directory,
> consider running the following command and trying again.
```bash
sudo chmod 755 cloudflared/.cloudflared/tunnel-secrets.json
```

### Manual approach

[Docs](https://developers.cloudflare.com/cloudflare-one/connections/connect-networks/get-started/create-remote-tunnel-api/)
