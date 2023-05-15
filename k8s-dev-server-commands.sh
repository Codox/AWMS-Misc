microk8s enable dns dashboard
sudo apt install snapd
sudo snap install core
sudo snap install microk8s --classic
sudo usermod -a -G microk8s $USER
sudo chown -f -R $USER ~/.kube
sudo snap install microk8s --classic
sudo snap install microk8s --classic --channel=1.27
sudo usermod -a -G microk8s $USER
sudo chown -f -R $USER ~/.kube
microk8s kubectl -n kube-system edit service kubernetes-dashboard
microk8s kubectl -n kube-system get services

microk8s kubectl -n kube-system describe secret $(microk8s kubectl -n kube-system get secret | grep kubernetes-dashboard-token | awk '{print $1}')
