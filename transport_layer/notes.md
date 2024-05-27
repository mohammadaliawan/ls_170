# The Transport Layer

## Communication between Processes

To build modern networked applications, the two most important things required are:

1. Direct communication between applications or processes
2. Reliable network communication.

Limitation of the Internet Protocol: It can only provide communication between two hosts or devices which can on the same local network or different local networks. But that is the extent of the communication through IP: between hosts and no more than that. 

For building networked applications we need communication between applications or processes running on two different hosts or potentially the same host.

### Multiplexing and Demultiplexing

All the different networked applications running on a device can be thought of as different channels of communication on a host. All these applications want to be able to send and receive data. But with IP addresses, we only have a single channel of communication between hosts. So we need to be able to transmit these multiple data inputs from different communication channels on a host, over a single communication channel between hosts and then when it arrives at the other end we need to be able to seperate them again.

Multiplexing is the concept of transmitting multiple signals over a single communication channel. Demultiplexing is the reverse process of breaking down a complex signal made up of different signals into its consituent parts.

Multiplexing and demultiplexing at the transport layer is done through the use of network ports.

### Ports

There are multiple networked applications running on a single host. A port is a unique identifier for a particular application or process running on a host. These ports are identified with an integer within the range 0-65535.