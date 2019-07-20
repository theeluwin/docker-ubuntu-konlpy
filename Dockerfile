# ubuntu
FROM ubuntu:latest
LABEL maintainer="Jamie Seol <theeluwin@gmail.com>"

# init
RUN apt-get update && \
    apt-get install -y g++ git curl

# java stuff
RUN apt-get install -y default-jdk default-jre

# python stuff
RUN apt-get install -y python3-pip python3-dev
RUN cd /usr/local/bin && \
    ln -s /usr/bin/python3 python && \
    pip3 install --upgrade pip

# cleanse
RUN apt-get clean && \
	rm -rf /var/lib/apt/lists/*

# install konlpy
RUN pip3 install jpype1-py3 konlpy
RUN curl -s https://raw.githubusercontent.com/konlpy/konlpy/master/scripts/mecab.sh | bash -s

# entry
ENTRYPOINT ["python3"]
