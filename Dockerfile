  FROM centos 
  MAINTAINER uday uday_kiran100@yahoo.com 
  RUN mkdir /data 
  RUN yum -y install httpd php wget 
  RUN echo "<h1>Hello All. This is my first docker image </h1>" > /var/www/html/index.html 
  RUN cd /var/www/html/ && wget https://cosmos-magazine.imgix.net/file/spina/photo/10822/170621-Puppy-Full.jpg?dpr=2&fit=clip&w=835 
  RUN echo "<img src="170621-Puppy-Full.jpg">" >> /var/www/html/index.html 
  EXPOSE 80 
  VOLUME /var/log /data 
  RUN echo "httpd" >> /root/.bashrc 
 CMD ["/bin/bash"] 

