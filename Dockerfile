FROM java:8
VOLUME /mnt/eureka-server
ARG JAR_FILE
ADD target/${JAR_FILE} app.jar
RUN bash -c 'touch /app.jar'
EXPOSE 8800
ENTRYPOINT ["java","-Xmx200m","-jar","/app.jar"]