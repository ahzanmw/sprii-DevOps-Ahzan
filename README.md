# Sprii-DevOps-Lumen Dockerfile

#Clone the Dockerfile from the repository

git clone https://github.com/ahzanmw/sprii-DevOps-Ahzan.git

#Docker Build Command

sudo docker build -t <yourImagename> .

#Docker Run Command

sudo docker run -it -p 80:80 -d <yourImagename>
