# mongodb-s3-backup

A tiny backup tool that uses mongodump to dump a Mongo database and upload the dump to AWS S3 using the AWS cli.

[![Docker Pulls](https://img.shields.io/docker/pulls/dotnetmentor/mongodb-s3-backup.svg?style=for-the-badge)](https://hub.docker.com/r/dotnetmentor/mongodb-s3-backup/)

## Pre-requisites

- AWS IAM credentials

## Configuration

| Environment variable | Description                                                 | Default      |
| -------------------- | ----------------------------------------------------------- | ------------ |
| MONGODB_AUTH_DB      | The name of the authentication database                     | admin        |
| MONGODB_DATABASE     | The name of the database to dump                            | -            |
| MONGODB_CONNECTION   | The mongo db connection (mongodb:// or mongodb+srv://)      | -            |
| MONGODB_USERNAME     | The username for mongo db                                   | -            |
| MONGODB_PASSWORD     | The password for mongo db                                   | -            |
| AWS_S3_BACKUP_BUCKET | The AWS S3 backup bucket name                               | -            |
| AWS_S3_BACKUP_PREFIX | The prefix to use for the backup                            | -            |
| BACKUP_DATE_FORMAT   | The date format used for suffixing backups with a timestamp | +%Y%m%d-%H%M |
| WEBHOOK_URL          | When specified, the URL will be called on completion        | -            |

## Source code and issues

[Github](https://github.com/dotnetmentor/mongodb-s3-backup)
