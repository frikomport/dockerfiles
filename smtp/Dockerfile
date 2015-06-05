FROM frikomport/java
MAINTAINER henrik.hedlund@knowit.no

ENV SMTP_HOME /opt/local/smtp

RUN mkdir /mails
RUN mkdir -p ${SMTP_HOME}
WORKDIR ${SMTP_HOME}

RUN wget http://www.aboutmyip.com/AboutMyXApp/DevNullSmtp.jar

EXPOSE 25
VOLUME [ "/mails" ]

CMD [ "java", "-jar", "DevNullSmtp.jar", "-console", "-s", "/mails" ]