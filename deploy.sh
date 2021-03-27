#!/bin/bash

#replace ${projectname} with your project name eg paycentre
#replabe ${port} with the ports exposed on your project eg 8180
if [ ! "$(docker ps -q -f name=www)" ]
then
        echo "************************************* No instance of project Running Currently *******************************"
        if [ "$(docker ps -aq -f name=www)" ]
        then
            echo "************************************* Removing Previous non-running Container *******************************"
            docker rm www
        fi
else
        echo "************************************* Killing Previous Container *******************************"
        docker kill www

        echo "************************************* Removing Previous Container *******************************"
        docker rm www
fi

echo "************************************* Staring the new Container *******************************"
docker pull sysadminexe/www
docker run -d -p 8080:80 --name www sysadminexe/www