docker run -d --rm --name aerospike -p 3000:3000 -p 3001:3001 -p 3002:3002 -p 3003:3003 aerospike:4.9.0.5
echo "sleeping before connection"
sleep 3
docker run -v `pwd`:/share -ti --name aerospike-aql --rm aerospike/aerospike-tools aql --host 172.17.0.2 --no-config-file

