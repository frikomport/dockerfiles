# Based on: https://registry.hub.docker.com/u/webratio/ant/

FROM frikomport/java
MAINTAINER henrik.hedlund@knowit.no

ENV ANT_VERSION 1.9.5

# Install Ant
RUN cd && \
	wget -q http://www.us.apache.org/dist//ant/binaries/apache-ant-${ANT_VERSION}-bin.tar.gz && \
	tar -xzf apache-ant-${ANT_VERSION}-bin.tar.gz && \
	mv apache-ant-${ANT_VERSION} /opt/ant && \
	rm apache-ant-${ANT_VERSION}-bin.tar.gz

# Setup environment
ENV ANT_HOME /opt/ant
ENV PATH ${PATH}:/opt/ant/bin

# Add Tomcat & JUnit JARs
COPY catalina-ant.jar ${ANT_HOME}/lib/
COPY junit.jar ${ANT_HOME}/lib/

# Create working directory
RUN mkdir -p /code
VOLUME [ "/code" ]
WORKDIR /code

ENTRYPOINT [ "ant" ]
