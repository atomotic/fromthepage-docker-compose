# fromthepage-docker-compose

A Docker compose for building [FromThePage](https://github.com/benwbrum/fromthepage) and running a development server.


## start

    $ docker-compose up

## run the migrations

    $ export CONTAINER="fromthepage-docker-compose_fromthepage_1"
    
    $ docker exec -it $CONTAINER sh -c "cd /home/fromthepage; bundle exec rake db:create"
    
    $ docker exec -it $CONTAINER sh -c "cd /home/fromthepage; bundle exec rake db:migrate"

## open

    $ open  http://localhost:3000