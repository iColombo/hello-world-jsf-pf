FROM ivandrocolombo/wildfly:1.0
LABEL MAINTAINER="iColombo"
RUN /opt/jboss/wildfly/bin/add-user.sh admin Admin
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
