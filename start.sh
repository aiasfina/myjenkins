NAME=myjenkins

case "$1" in
  	build)
    	docker build -t $NAME .
  	;;
  	run)	
    	docker run -d -v /var/run/docker.sock:/var/run/docker.sock \
               	   -v $(which docker):/usr/bin/docker \
                   -p 8080:8080 --name $NAME $NAME
  	;;
esac
