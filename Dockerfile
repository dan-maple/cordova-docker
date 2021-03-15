FROM node:15.11.0-buster-slim

SHELL ["/bin/bash", "-c"]

# Set build variables.
ARG CORDOVA_VERSION=10.0.0

# Install Cordova and additional packages.
RUN npm install -g cordova@${CORDOVA_VERSION} && \
    cordova telemetry on && \
    apt update && \
    apt install -y curl zip git && \
    apt autoremove -y
