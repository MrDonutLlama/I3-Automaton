PYTHON_VERSION=$(python3 --version | grep 3.8)

if [ -z "$PYTHON_VERSION" ];
then
	echo "Install Python 3";
	sudo apt-get install python3 -y;
fi

PIP_VERSION=$(pip3 --version | grep 20.0)

if [ -z "$PIP_VERSION" ]; 
then
	echo "Install Pip 3";
	sudo apt-get install python3-pip -y;
fi

ANSIBLE_VERSION=$(ansible --version | grep 2.11)

if [ -z "$ANSIBLE_VERSION" ];
then
	echo "Install Ansible";
	sudo apt-get install ansible -y;
fi

ANSIBLE_PLUGIN_CHECK=$(ansible-galaxy collection list | grep community.general)

if [ -z "$ANSIBLE_PLUGIN_CHECK" ];
then
	echo "Install Ansible community.general Plugin Package";
	sudo ansible-galaxy collection install community.general;
fi

