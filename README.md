# Run Server
run tomcat server
```
docker run -it --rm --publish=8080:8080 tjenwellens/tomcat
```

run with volume for dev purposes (no redeploy needed, only reload)
```
docker run -it --rm -p=8080:8080 -v $(pwd)/target/springapp:/usr/local/tomcat/webapps/springapp tjenwellens/tomcat
```

run with volume and remote debugger
```
docker run -it --rm -p=8080:8080 -p=1043:1043 -e JPDA_ADDRESS=1043 -v $(pwd)/target/springapp:/usr/local/tomcat/webapps/springapp tjenwellens/tomcat /bin/sh -c "catalina.sh jpda start; tail -F -n0 /etc/hosts"
```

# Build docker file
```
docker build -t <image-name> .
```

# Docker Hub

https://hub.docker.com/r/tjenwellens/tomcat/
