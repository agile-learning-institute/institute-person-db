docker rm -f testmongo
docker run -e MONGO_INITDB_ROOT_USERNAME=root -e MONGO_INITDB_ROOT_PASSWORD=example -p 27017:27017 --name testmongo --detach mongo:latest
sleep 5
export HOST=localhost
export USER=root
export PASSWORD=example
export AUTH_DB=admin
export DB_NAME=agile-learning-institute
export SCRIPT_PATH=migrate.js
export LOAD_TEST=true
./entrypoint.sh