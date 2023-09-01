FROM mongo:5.0.17-focal
RUN apt-get update --allow-insecure-repositories && apt-get install -y unzip curl
RUN curl https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -o  awscliv2.zip
RUN unzip awscliv2.zip
RUN chmod +x ./aws/install && ./aws/install && aws --version
RUN rm awscliv2.zip && rm -rf ./aws
COPY ./backup-to-s3 /usr/bin/
ENTRYPOINT "/usr/bin/backup-to-s3"
