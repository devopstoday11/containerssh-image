FROM ubuntu:latest

RUN apt update && apt install -y ssh && apt-get -y clean

# Add a label to not use a shell wrapper for executing commands
LABEL at.pasztor.containerssh.shellwrapper=false

ENTRYPOINT ["/bin/sh", "-c"]
CMD ["/bin/bash"]