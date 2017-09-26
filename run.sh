docker build -t mule .

docker run \
-d \
-p 8080-8090:8080-8090/tcp \
--name muleserver \
-v /home/nutt/Docker/muleengine/apps:/mule-standalone-3.8.1/apps \
-v /home/nutt/Docker/muleengine/conf:/mule-standalone-3.8.1/conf \
-v /home/nutt/Docker/muleengine/logs:/mule-standalone-3.8.1/logs \
mule