FROM amazon/dynamodb-local

ENV ROOT_USER=root
ENV SVC_USER=dynamodblocal
ENV LOG_FILE=log4j2.xml
ENV TARGET_DIR=/home/${SVC_USER}
ENV JAR_NAME=DynamoDBLocal.jar

ADD ./${LOG_FILE} ${TARGET_DIR}
WORKDIR ${TARGET_DIR}

USER root
RUN yum install zip -y && \
    zip -d ${JAR_NAME} ${LOG_FILE} && \
    zip -u ${JAR_NAME} ${LOG_FILE} && \
    yum remove -y zip

USER ${SVC_USER}

