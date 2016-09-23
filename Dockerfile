FROM ubuntu:latest
MAINTAINER Johan Pauwels
RUN apt-get -y update && apt-get install -y \
   ant \
   default-jdk-headless \
   git \
   libgtk2.0-0 \
   python \
   python-scipy \
   python-tk \
&& rm -rf /var/lib/apt/lists/*
WORKDIR /root
RUN git clone https://github.com/opcode81/ProbCog.git
WORKDIR ProbCog/
RUN ant compile \
&& python make_apps.py \
&& echo source $HOME/ProbCog/env.sh >> $HOME/.bashrc
ENV toulbar_package="toulbar2.0.9.8.0-Release-x86_64.deb"
ADD https://mulcyber.toulouse.inra.fr/frs/download.php/1448/${toulbar_package} .
RUN dpkg -i ${toulbar_package} && rm ${toulbar_package}
COPY ismir1-chord ICASSP2017/ismir1-chord
COPY ismir2-chordpriorkey ICASSP2017/ismir2-chordpriorkey
COPY ismir3-jointchordkey ICASSP2017/ismir3-jointchordkey
COPY icassp-chordpriorstructure ICASSP2017/icassp-chordpriorstructure
WORKDIR ICASSP2017
