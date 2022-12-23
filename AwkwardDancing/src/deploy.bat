@ECHO OFF
ECHO Creating .war file...
cd WebContent
jar -cvf ROOT.war *
move ROOT.war ..
cd ..

ECHO Creating docker image
docker build -q "..\src" -t lab10image -f Dockerfile
ECHO Pushing docker image
docker tag lab10image registry.digitalocean.com/group49-lab10/lab10image
docker push registry.digitalocean.com/group49-lab10/lab10image