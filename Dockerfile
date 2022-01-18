FROM tomcat:10-jdk11-temurin-focal

RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get install -y \
    software-properties-common \
    wget git maven mysql-server gnupg2 \
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
    install -m 444 $HOME/kitodo-production/Kitodo/rulesets/*.xml kitodo/rulesets/ && \
    install -m 444 $HOME/kitodo-production/Kitodo/diagrams/*.xml kitodo/diagrams/ && \
    install -m 554 $HOME/kitodo-production/Kitodo/scripts/*.sh kitodo/scripts/ && \
    chmod -w kitodo/config kitodo/import kitodo/messages kitodo/plugins kitodo/plugins/command kitodo/plugins/import kitodo/plugins/opac kitodo/plugins/step kitodo/plugins/validation kitodo/rulesets kitodo/scripts kitodo/xslt


WORKDIR /root/kitodo-production
RUN service mysql start && \
    mysql -e "create database kitodo;create user 'kitodo'@'localhost' identified by 'kitodo';grant all on kitodo.* to 'kitodo'@'localhost';flush privileges;" && \
    mysql -u kitodo -D kitodo --password=kitodo < $HOME/kitodo-production/Kitodo/setup/schema.sql && \
    mysql -u kitodo -D kitodo --password=kitodo < $HOME/kitodo-production/Kitodo/setup/default.sql && \
    mkdir config-local && \
    cp Kitodo/src/main/resources/hibernate.cfg.xml $HOME/kitodo-production/config-local/hibernate.cfg.xml && \
    cp Kitodo/src/main/resources/kitodo_config.properties $HOME/kitodo-production/config-local/kitodo_config.properties && \
    mvn clean install -DskipTests && \
    cd Kitodo-DataManagement && \
    mvn flyway:baseline -Pflyway && \
    mvn flyway:migrate -Pflyway && \
    mysqldump -u kitodo --password=kitodo kitodo > kitodo-3.sql && \
    cd $HOME/kitodo-production


COPY entrypoint.sh .
ENTRYPOINT [ "bash", "entrypoint.sh" ]
