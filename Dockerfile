FROM ivandrocolombo/helloworldjsf:1.0
LABEL MAINTAINER="iColombo"
RUN /opt/jboss/wildfly/bin/add-user.sh admin AdminCS1021
#COPY /hello-world/target/hello-world.war /opt/jboss/wildfly/standalone/deployments/
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
