home_dir=/home/project
cd $home_dir && git clone https://github.com/tawalisa/springbootdocker.git
cd $home_dir/dockerfiles/redis && docker build -t redis .
cd $home_dir/springbootdocker/webserver && mvn package && java -jar target/webserver-0.0.1-SNAPSHOT.jar
