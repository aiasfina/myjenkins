NAME=myjenkins

case "$1" in
  	build)
    	docker build -t $NAME .
  	;;
  	run)
    	docker run -d -p 8080:8080 -v /var/run/docker.sock:/var/run/docker.sock -v $PWD/jenkins_home:/var/jenkins_home --name $NAME --privileged $NAME && docker exec $NAME sudo chown jenkins /var/run/docker.sock
  	;;
esac
