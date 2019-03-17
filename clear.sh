docker-compose stop
docker rm dev-wp-mysql
docker rm dev-wp
docker volume rm dev_wp_db_data
docker volume rm dev_wp_contents
