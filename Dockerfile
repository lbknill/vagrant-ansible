FROM centos:7.3.1611
WORKDIR /root/
RUN curl https://releases.hashicorp.com/vagrant/1.9.5/vagrant_1.9.5_x86_64.rpm
RUN yum install -y vagrant_1.9.5_x86_64.rpm;yum -y install ansible; yum clean all;vagrant plugin install vagrant-openstack-provider;rm vagrant_1.9.5_x86_64.rpm
