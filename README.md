# Home Cluster
## How to start it up

If you had a clean RaspberryPi, run the following command to install k3s and make sure to alter the IP in the install config: 
```shell
curl -sfL https://get.k3s.io | INSTALL_K3S_VERSION=v1.29.3+k3s1 sh -s - --config=/root/install_config.yaml`
```

After that, look through the persistant volumes and recreate the directory structure needed to support this cluster. As of right now I recommend at least 2TB of free storage. Also, update the ingresses and tokens to fit your domain & cloudflare account. Make sure to populate the .env file with the right data. Then, run the following commands from the root of the repo:

```shell
kubectl apply -f namespaces.yaml

./redeploy_cluster.sh
```

Afterwards its just a matter of visiting the ingresses and setting up the apps. Happy hacking ;)

## Docker
Also, run 
```shell
cd ddns-updater
docker compose up --detach --force-recreate --remove-orphans
cd ../gluetun
docker compose up --detach --force-recreate --remove-orphans
```

## Currently deployed services
* [Audiobookshelf](https://github.com/advplyr/audiobookshelf)
* [Cert-Manager](https://github.com/cert-manager/cert-manager)
* [Foward-Auth](https://github.com/jordemort/traefik-forward-auth/pkgs/container/traefik-forward-auth)
* [Keycloak](https://github.com/keycloak/keycloak)
* Developer Portfolio (Self-made - Link coming soon)
* [Immich](https://github.com/immich-app/immich)
* [Jellyfin](https://github.com/jellyfin/jellyfin)
* [Navidrome](https://github.com/navidrome/navidrome)
* [Open Web Ui](https://github.com/open-webui/open-webui)
* [Seafile](https://github.com/haiwen/seafile)
* [Jaeger](https://github.com/jaegertracing)
* [Opentelemetry Collector](https://github.com/open-telemetry/opentelemetry-collector)
* [Traefik Reverse Proxy](https://github.com/traefik/traefik)
* [Paperless-ngx](https://github.com/paperless-ngx/paperless-ngx)
* [Headscale](https://github.com/juanfont/headscale)