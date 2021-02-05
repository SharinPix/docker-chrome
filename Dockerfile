FROM circleci/node:14.15.1-browsers
MAINTAINER SharinPix <dev@sharinpix.com>

RUN wget -q https://sharinpix-travis-chrome.s3.amazonaws.com/chrome88.deb -O /tmp/chrome.deb && sudo dpkg -i --force-confnew /tmp/chrome.deb && rm -rvf /tmp/chrome.deb
RUN sudo echo "127.0.1.1	proxy" >> /etc/hosts
