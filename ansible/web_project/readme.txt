Project name: Website_hosting

agenda: Developer develop code push into shared repository
	Jenkins fetch the code from share repository and sync to ansible server
	Ansible server fetch the code passing to web-hosting server
	webserver hosting the website which given by ansible

1. Create 4 servers
	1.1 Developer
	1.2 Jenkins
	1.3 Ansible
	1.4 Web_server

2. Install required package each servers.
	2.1 Developer : Git
	2.2 Jenkins : Git, jenkins, openjdk
	2.3 Ansible : ansible
	2.4 Webserver: apache/httpd

3. Enable passwordless authentication between the servers except Developer
	3.1 Enable PasswordAuthentication yes & PermitRootLogin yes - /etc/ssh/sshd_config
	3.2 Restart the sshd, jenkins, httpd/apache services
	3.3 genereage ssh key and copy id's
		3.3.1 Jenkins to Ansible
		3.3.2 Ansible to Web_server
		3.3.3 Test the passwordless authentication.

4. Configure Jenkins
	4.1 install plugin public over SSH
	4.2 configure system
		4.2.1 add hostname and credentials and test the connections for Jenkins and Ansible servers (Because jenkins sync content to ansible)
		4.2.2 create jenkins job
		4.2.3 git: <git repo link>
		4.2.4 enable git webhook
		4.2.5 build steps: Jenkins - rsync -avh /var/lib/jenkins/workspace/<job_name>/*.html root@<dest_ip>:<dest_path>/index.html
		4.2.6 post build action : Ansible - ansible-playbook <path>/<yml_file.yaml>   #keep the yaml file specified location

5. Configure git server
	5.1 create repo in git-hub && clone it locally
	5.2 git-hub : setting-add-webhook
	5.3 get jenkins ipaddress:8080/github-webhook/
	5.4 get api token from jenkins server to github-webhook
	5.5 test the connection between jenkins and github repository

6. Push code to the github repository and test the project.
