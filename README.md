# Home Cluster
## How to start it up

If you had a clean RaspberryPi, run the following command to install k3s and make sure to alter the IP in the install config: 
```shell
curl -sfL https://get.k3s.io | INSTALL_K3S_VERSION=v1.29.3+k3s1 sh -s - --config=/root/install_config.yaml`
```

After that, look through the persistant volumes and recreate the directory structure needed to support this cluster. As of right now I recommend at least 2TB of free storage. Also, update the ingresses and tokens to fit your domain & cloudflare account. Then, run the following commands from the root of the repo:
```shell
create namespaces

kubectl kustomize --enable-helm . | kubectl apply -f - 
```

Afterwards its just a matter of visiting the ingresses and setting up the apps. Happy hacking ;)