FROM maven:3-jdk-8

WORKDIR /opt

# Build PYX
RUN git clone https://github.com/Snack-X/PretendYoureXyzzy.git pyx
WORKDIR /opt/pyx

# RUN git checkout korean
RUN cp build.properties.example build.properties

RUN mvn clean package war:war
EXPOSE 8080

CMD mvn jetty:run
