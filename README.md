# WirelessThings Message Bridge #

MessageBridge is part of the WirelessThings (former Ciseco) LaunchPad suite and is used to provides a Message Bridge for Language of Things 
message between Serial and UDP networks. 
On the serial side it talks strict Language of Things, on the UDP network it encodes/decodes the Language of Things messages using a JSON packet.

*WirelessThings LaunchPad: https://github.com/WirelessThings/WirelessThings-LaunchPad*

## Docker Image Features ##

* Serial port can be customized by setting the environment variable `SERIAL_PORT` (otherwise the default `/dev/ttyAMA0` is used)
* Expose port `50141/udp`
* Expose CVS logs directory at `/MessageBridge/CVSLogs`

## How to Run It ##

~~
docker run --rm --privileged -p 50141:50141/udp -e SERIAL_PORT=/dev/ttyAMA0 user2684/messagebridge
~~

## Tags ##
* [`latest`, `0.17`](https://github.com/user2684/messagebridge-docker/blob/master/Dockerfile)

