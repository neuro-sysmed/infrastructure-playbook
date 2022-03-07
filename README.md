# infrastructure-playbook
For the azure infrastructure


## nsm vm

Create in azure portal with a sysadmin user


```
sudo apt-get update 
sudo apt-get upgrade -y 
sudo apt-get  install python3-venv python3-pip -y

# tmp playbook, another will be installed in /usr/local/ in one of the next steps
cd /tmp

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

ln -s   /usr/local/etc/ecc_prod.yml /usr/local/etc/ecc.yml

# to be able to use ecc azure-cli needs to be availabe:
az login

#run ecc

eccd -v 

```


## Create some additional VMs

```


/usr/local/bin/ecc-cli add project ecc-head-ubuntu ecc-node-ubuntu projectvm
# run playbooks to bootstrap the vms, might crash if apt is doing auto update(s)
ansible-playbook project_vm.yml
ansible-playbook slurm.yml

```



## slurm 

```
# See HPC status 
sinfo

# list queue
squeue

# users jobs
squeue -u user_id

# detailed job info
sacct

# Submit a job 
sbatch hpc_job.sh



# Oneliner:
  sbatch  -p debug --wrap "samtools index sample.bam "

```

For all options see here: https://slurm.schedmd.com/sbatch.html


## modules (lmod)

```
# list all modules 
module avail

# load module default version
module load samtools

# load  module spec version 
module load samtools/1.11

# save module env (default), will be reloaded on login
module save


# save, and load module env (default)
module save project1
module loadsave project1


# load shared environment
module load StdEnv # default for all users 



```