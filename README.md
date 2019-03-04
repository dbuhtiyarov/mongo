# POC for MongoDB as replica-set and nginx as load-balancer 

![Architecture](https://docs.mongodb.com/manual/_images/replica-set-primary-with-two-secondaries.bakedsvg.svg)

## Description

The idea is to have like-prod layout what could be install locally for test purposes 

### System Requirements

* docker
* docekr-compose

### Installation

* docker-compose up -d

### Data extract 

1. http://media.mongodb.org/zips.json could be used as simple data (a couple of lines is enough)<br/> 
2. docker exec -ti mongoClient bash<br/>
3. mongoimport --host ${RS_NAME}/${VM_IP}:27017 -d test-db --file /opt/test.json (save some lines from 1. as test.json)<br/>
<br/>
RS_NAME - name of the replication set (rs0 in that example)<br/>
VM_IP - IP of the LoadBalancer<br/>

### Deletion

* docker-compose rm -f -s -v
