FROM alpine:3.9
LABEL maintainer="Davide de Lerma <davide.delerma@gmail.com>"

ADD install.sh install.sh
RUN sh install.sh && rm install.sh

ENV POSTGRES_HOST **None**
ENV POSTGRES_PORT 5432
ENV POSTGRES_USER **None**
ENV POSTGRES_PASSWORD **None**
ENV POSTGRES_EXTRA_OPTS ''
ENV S3_ACCESS_KEY_ID **None**
ENV S3_SECRET_ACCESS_KEY **None**
ENV S3_BUCKET **None**
ENV S3_REGION eu-west-1
ENV S3_S3V4 no
ENV S3_URL http://s3-uk-1.sa-catapult.co.uk 
ENV SCHEDULE **None**
ENV NAMESPACE **None**
 

ADD run.sh run.sh
ADD backup.sh backup.sh

# CMD ["sh", "run.sh"]
