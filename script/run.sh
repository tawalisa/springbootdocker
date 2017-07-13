home_dir=/home/project
cd $home_dir && git clone https://github.com/tawalisa/springbootdocker.git
#cd $home_dir/springbootdocker/dockerfiles/redis && docker build -t redis . && docker run -i --name redis redis
#cd $home_dir/springbootdocker/webserver && mvn package && java -jar target/webserver-0.0.1-SNAPSHOT.jar
cd $home_dir/springbootdocker/webserver && mvn package && cp target/webserver-0.0.1-SNAPSHOT.jar $home_dir/springbootdocker/dockerfiles/webservice
cd $home_dir/springbootdocker/dockerfiles/webservice && docker build -t webservice .
