FROM openjdk:17
COPY target/dockerfile-gen.jar  dockerfile-gen.jar
WORKDIR /user/app
ENTRYPOINT ["java","-jar","dockerfile-gen.jar"]
