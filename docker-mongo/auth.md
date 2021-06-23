# run mongo
docker run -p 47017:27017 --name mongo -v /mnt/dockerMongoData/db:/data/db -d mongo

# mongo-cli
> use ShowNodeDatabase
> 
> db.createUser({ 
    user: 'blue', 
    pwd: 'bluepassword', 
    roles: [ { role: "readWrite", db: "BlueDatabase" } ] });

> db.auth("blue","bluepassword")

# restart
docker run -p 47017:27017 --name mongo -v /mnt/dockerMongoData/db:/data/db -d mongo mongod --auth

# connect
mongo --port 47017 -u "blue" -p "bluepassword" --authenticationDatabase "BlueDatabase"

