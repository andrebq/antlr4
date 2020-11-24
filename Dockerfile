FROM adoptopenjdk:11.0.9.1_1-jre-hotspot

WORKDIR /usr/local/lib/antlr
RUN curl -O https://www.antlr.org/download/antlr-4.8-complete.jar

ENV ANTLR_JAR=/usr/local/lib/antlr/antlr-4.8-complete.jar
ENV CLASSPATH='.:${ANTLR_JAR}}:${CLASSPATH}' 
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod 0755 /usr/local/bin/entrypoint.sh
ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]
