#vim .bashrc
#export PATH=$PATH:/usr/local/bin
#source .bashrc

yum install docker -y
systemctl start docker
systemctl status docker
curl -LO https://github.com/kubernetes/minikube/releases/latest/download/minikube-linux-amd64
sudo chmod +x minikube-linux-amd64
sudo mv minikube-linux-amd64 /usr/local/bin/minikube
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo chmod +x kubectl
sudo kubectl /usr/local/bin/
minikube start --driver=docker --force
minikube status 
