FROM tomcat:9.0.58-jdk11-temurin-focal


RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get install -y \
    software-properties-common \
    wget git maven mariadb-server-10.3 gnupg2 \
    imagemagick slapd ldap-utils samba \
    apt-transport-https unzip dos2unix


RUN wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | apt-key add - && \
    # apt-get update && \
    add-apt-repository "deb https://artifacts.elastic.co/packages/7.x/apt stable main" && \
    apt-get update && \
    apt-get install elasticsearch


RUN git clone https://github.com/kitodo/kitodo-production/ $HOME/kitodo-production


WORKDIR /usr/local
RUN mkdir -p kitodo/config kitodo/debug kitodo/diagrams kitodo/import kitodo/logs \
    kitodo/messages kitodo/metadata kitodo/modules kitodo/plugins \
    kitodo/plugins/command kitodo/plugins/import kitodo/plugins/opac \
    kitodo/plugins/step kitodo/plugins/validation \
    kitodo/rulesets kitodo/scripts kitodo/temp kitodo/users kitodo/xslt && \
    install -m 444 $HOME/kitodo-production/Kitodo/src/main/resources/kitodo_*.xml kitodo/config/ && \
    install -m 444 $HOME/kitodo-production/Kitodo/src/main/resources/docket*.xsl kitodo/xslt/ && \
    install -m 444 $HOME/kitodo-production/Kitodo/src/main/resources/xslt/*.xsl kitodo/xslt/ && \
    install -m 444 $HOME/kitodo-production/Kitodo-XML-SchemaConverter/src/main/resources/xslt/pica2kitodo.xsl kitodo/xslt/ && \
    install -m 444 $HOME/kitodo-production/Kitodo-XML-SchemaConverter/src/main/resources/xslt/mods2kitodo.xsl kitodo/xslt/ && \
    install -m 444 $HOME/kitodo-production/Kitodo/rulesets/*.xml kitodo/rulesets/ && \
    install -m 444 $HOME/kitodo-production/Kitodo/diagrams/*.xml kitodo/diagrams/ && \
    install -m 554 $HOME/kitodo-production/Kitodo/scripts/*.sh kitodo/scripts/ && \
    chmod -w kitodo/config kitodo/import kitodo/messages kitodo/plugins kitodo/plugins/command kitodo/plugins/import kitodo/plugins/opac kitodo/plugins/step kitodo/plugins/validation kitodo/rulesets kitodo/scripts kitodo/xslt

COPY kitodo_premade_workflow/kitodo/ /usr/local/kitodo/
COPY kitodo_premade_workflow/kitodo_starting_point.sql /root/kitodo_starting_point.sql

COPY mariadb_adjustments /root/mariadb_adjustments
COPY initialsetup.sh /root/initialsetup.sh
COPY entrypoint.sh /root/entrypoint.sh
COPY deploy.sh /root/deploy.sh
ENTRYPOINT [ "bash", "/root/entrypoint.sh" ]

WORKDIR /root/kitodo-production
CMD [ "$CATALINE_HOME/bin/catalina.sh", "run" ]