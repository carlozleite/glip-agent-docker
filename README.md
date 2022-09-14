### GLPI 10 AGENT DOCKER


```
docker run -v /pathhost/glpi-agent/etc:/etc/glpi-agent \
-v  /pathhost/glpi-agent/data:/var/lib/glpi-agent \
-e GLPI_SERVER=<GLPI SERVER URL> \
-e GLPI_USER=<GLPI SERVER USER> \
-e GLPI_PASSWORD=<GLPI SERVER PASSWORD \
-d glpi-agent:1.0

```

## VOLUMES: 

/pathhost/glpi-agent/etc:/etc/glpi-agent 

/pathhost/glpi-agent/data:/var/lib/glpi-agent

## ENV:

GLPI_SERVER=<GLPI_SERVER_URL>

GLPI_USER=<GLPI_SERVER_USER>

GLPI_PASSWORD=<GLPI_SERVER_PASSWORD>

## ADD REMOTE (glpi-remote)

```
docker exec -it $(docker ps | grep glpi-agent |awk '{print $1}') glpi-remote
```

* EX:
```
# docker exec -it $(docker ps | grep glpi-agent |awk '{print $1}') glpi-remote list
```

* EX: 
```
# docker exec -it $(docker ps | grep glpi-agent |awk '{print $1}') glpi-remote add ssh://user:password@ip --no-check
```
