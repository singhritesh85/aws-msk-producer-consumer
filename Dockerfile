FROM apache/kafka:4.2.1
USER root
ADD https://github.com/aws/aws-msk-iam-auth/releases/download/v2.3.7/aws-msk-iam-auth-2.3.7-all.jar /opt/kafka/libs/aws-msk-iam-auth-2.3.7-all.jar
ENV CLASSPATH="/opt/kafka/libs/aws-msk-iam-auth-2.3.7-all.jar:${CLASSPATH}"
ENV PATH="/opt/kafka/bin:${PATH}"
