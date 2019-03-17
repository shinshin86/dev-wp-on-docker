# dev-wp-on-docker (WIP)

Setup files of developing wordpress on docker.



## Usage

### Start

Run setup script

```bash
bash setup.sh
```



And access to http://localhost



### Remove

Delete all development env

**NOTE: This command is remove also data volume.**

```bash
bash clear.sh
```





## Setup scripts content

Setup data volume

```bash
docker volume create --name=dev_wp_db_data
docker volume create --name=dev_wp_contents
```



Start Wordpress and MySQL.

```bash
docker-compose up -d 
```



## Files

* DockerfileWp

An option is specified to enable file upload.

```Docker
FROM wordpress:latest

RUN usermod -u 1000 www-data \
    && groupmod -g 1000 www-data
```

* DockerMysql (WIP)

`data-init` directory is contains scripts related to MySQL initial data

Set up as initial data at `DockerfileMysql`. And put initial data to this `data-init` directory.
