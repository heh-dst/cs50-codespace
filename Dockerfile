FROM ghcr.io/cs50/codespace:latest


# Unset user
USER root
ARG DEBIAN_FRONTEND=noninteractive


# Set virtual display
ENV DISPLAY=":0"


# Copy files to image
COPY ./etc /etc
COPY ./opt /opt
RUN chmod a+rx /opt/cs50/bin/*


# Set user
USER ubuntu
