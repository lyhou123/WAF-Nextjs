# docker volume create portainer_data

# docker service create \
#   --name portainer \
#   --publish 9000:9000 \
#   --constraint 'node.role == manager' \
#   --mount type=bind,src=/var/run/docker.sock,dst=/var/run/docker.sock \
#   --mount type=volume,src=portainer_data,dst=/data \
#   portainer/portainer-ce:latest


docker node update \
  --label-add role.waf=true \
  --label-add role.controller=true \
  --label-add role.worker-1=true \
  --label-add role.worker-2=true \
  x1zxteakxu19wp2i5f8vorkl7