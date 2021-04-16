FROM circleci/node:14.15.1-browsers
MAINTAINER SharinPix <dev@sharinpix.com>

RUN wget -q https://sharinpix-travis-chrome.s3.amazonaws.com/chrome.deb -O /tmp/chrome.deb && sudo dpkg -i --force-confnew /tmp/chrome.deb && rm -rvf /tmp/chrome.deb
RUN sudo -- sh -c -e "echo '127.0.0.1   app.sharinpix.com' >> /etc/hosts";
RUN sudo apt-get -y install vim
