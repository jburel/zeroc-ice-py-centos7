FROM centos:7
MAINTAINER ome-devel@lists.openmicroscopy.org.uk

RUN curl -sL https://zeroc.com/download/Ice/3.6/el7/zeroc-ice3.6.repo > \
    /etc/yum.repos.d/zeroc-ice3.6.repo
RUN yum install -y -q epel-release && \
    yum install -y -q \
        ice-all-runtime \
        ice-all-devel \
        bzip2-devel \
        expat-devel \
        gcc \
        gcc-c++ \
        libdb-utils \
        openssl-devel \
        python3 \
        python3-devel \
        python3-wheel
RUN mkdir /dist
ADD build.sh /
CMD ["/build.sh", "3.6.5"]
