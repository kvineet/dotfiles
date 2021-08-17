#!/usr/bin/env sh

if command -v kubectl &> /dev/null; then
    current=$(kubectl version --short --client | cut -d " " -f 3)
else
    current=""
fi
stable=$(curl -L -s https://dl.k8s.io/release/stable.txt)

if [[ $current == $stable ]];then
    exit 0
fi

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
echo "$(<kubectl.sha256) kubectl" | sha256sum --check
if [ $? -eq 0 ];then
    sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
else
    echo "checksum failed for kubectl. aborting..."
fi
rm kubectl
rm kubectl.sha256
