FROM ubuntu
RUN apt-get update && \
    apt-get install -y wget && \
    apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

COPY ./start-dropbox /start-dropbox
VOLUME [ "/home/dropbox/Dropbox", "/home/dropbox/.dropbox"]
CMD /start-dropbox
