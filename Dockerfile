FROM openshift/openjdk-11-rhel7
MAINTAINER "TESTER"
LABEL description="this is a jar test"
WORKDIR app
ADD springboot-simple-hello-0.0.1-SNAPSHOT.jar app/app.jar
EXPOSE 8081
CMD java -jar /app/app.jar
ENTRYPOINT ["java","-jar","app.jar"]