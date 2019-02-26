#!/bin/bash

mongo --host db01 --eval "rs.initiate({_id : 'rs0', members : [{_id : 1, host : 'db01:27017'},{_id : 2, host : 'db02:27017'},{_id : 3, host : 'db03:27017'}]})"
mongo --host db01 --eval "while(true) {if (rs.status().ok) break;sleep(1000)};"
