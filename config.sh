

docker start ansible_server
docker start ansible_node1
docker start ansible_node2

docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' ansible_node1 
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' ansible_node2

docker exec -it ansible_server bash
