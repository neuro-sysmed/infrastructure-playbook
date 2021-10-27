# infrastructure-playbook
For the azure infrastructure

```
sudo apt-get update 
sudo apt-get upgrade -y 
sudo apt-get  install python3-venv python3-pip -y




git clone https://github.com/neuro-sysmed/infrastructure-playbook
cd infrastructure-playbook
python3 -m venv venv
source venv/bin/activate
pip install -q --upgrade pip
pip install wheel -q

pip install -r requirements.txt
ansible-galaxy role install -p roles -r requirements.yml
ansible-galaxy collection install -p roles -r requirements.yml

ansible-playbook ecc.yml

```