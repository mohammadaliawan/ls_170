# LS170 Lesson 1 Notes

-  Purpose of the course: build a mental model of communication between networked applications as the interaction of multiple different protocols (systems of rules)

## What to focus on

- This lesson explores the underlying infrastructure of the internet and the protocols that support that infrastructure

Focus on: 
- Build a general picture of the network infrastructure
- Be aware of the limitations of the physical network
- Understand that protocols are systems of rules
- Learn that IP enables communication between devices

## What is the Internet

- What is a Network?
  - Fundamentally, any two devices that are connected to each other such that they can communicate or exchange data form a network.
  - For example, two computers connected to each other through a LAN cable that are able to exchange data.

- Local Area Network (LAN) / WLAN
  - consists of multiple devices that are connected to a common network bridging device e.g. a hub or a switch either through LAN cables or wirelessly. 
  - Devices in a Local Area Network are only able to communicate with other devices connected to the same hub or switch i.e. the scope of communication for the devices on this network have a geographic limitation.

- Inter-network Communication
  - To allow for communication between stand alone LANs, rounters are used. 
  - Routers are network devices that manage network traffic between LANs
  - So for any network traffic to access a pariticular network, it has to routed through the router for that network.

- Internet: can be thought of as a network of large number of networks. The networks are connected to each other through a system of routers that manage the network traffic.

## Protocols

- How are so many different kinds and makes of devices able to connect to and communicate through the Internet?

- Protocols: A set of rules that govern the exchange or transmission of data.

- Numerous protocols
  - IP
  - SMTP
  - TCP
  - HTTP
  - Ethernet
  - FTP
  - DNS
  - UDP
  - TLS

- Why there are so many protocols for network communication?
  - Different protocols were developed to address different aspects of network communication.
  - Different protocols were developed to address the same aspect of network communication but differently for a specific use case

Just as with human converstation, there are different aspects of network communication. For example, one aspect is the structure of a single message. Another is, the flow and order of all the messages. Different protocols govern these different aspects of network communication. 

Another reason for so many different protocols, is that some times the same aspect of network communication needs to be addressed in a different way for a specific use case. So different protocols address the same aspect of network communication in a different way.



