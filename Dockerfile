FROM python:2.7-alpine

# Set the working dir
WORKDIR /

# Install required python packages with pip
RUN pip install pyserial

# Install MessageBridge
RUN wget https://github.com/WirelessThings/WirelessThings-LaunchPad/archive/0.17.tar.gz \
  && tar zxfv 0.17.tar.gz \
  && mv WirelessThings-LaunchPad-0.17/MessageBridge/ . \
  && rm -rf WirelessThings-LaunchPad-0.17

# Expose network services
EXPOSE 50141/udp

# Expose Volumes
VOLUME /MessageBridge/CVSLogs

# Install entrypoint
COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]

# Start the app
CMD ["MessageBridge"]
