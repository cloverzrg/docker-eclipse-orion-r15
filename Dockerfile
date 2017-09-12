FROM jolokia/java-jolokia:latest
# http://download.eclipse.org/orion/
RUN curl -o /tmp/orion.zip http://mirrors.neusoft.edu.cn/eclipse/orion/drops/R-15.1-201706291452/eclipse-orion-15.0.0S2-linux.gtk.x86_64.zip && \
    cd /opt && unzip /tmp/orion.zip && \
    rm -rf /tmp/orion.zip

RUN chmod +x /opt/eclipse/orion

EXPOSE 8080

WORKDIR /opt/eclipse

CMD ["/opt/eclipse/orion"]
