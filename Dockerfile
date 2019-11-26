FROM ui-base-docker:latest

RUN apt update && \
    apt install -y vlc

USER andrei

CMD ["/usr/bin/vlc"]
