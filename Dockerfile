FROM jolokia/java-jolokia:latest
# http://download.eclipse.org/orion/
RUN curl -o /tmp/orion.zip http://www.eclipse.org/downloads/download.php?file=/orion/drops/R-17.0-201801111044/eclipse-orion-17.0.0S1-linux.gtk.x86_64.zip && \
    cd /opt && unzip /tmp/orion.zip && \
    rm -rf /tmp/orion.zip

RUN chmod +x /opt/eclipse/orion

EXPOSE 8080

WORKDIR /opt/eclipse

CMD ["/opt/eclipse/orion"]
