FROM jboss/wildfly:latest
LABEL MAINTAINER="iColombo"
RUN /opt/jboss/wildfly/bin/add-user.sh admin Admin
COPY hello-world-jsf-1.0.war /opt/jboss/wildfly/standalone/deployments/
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
