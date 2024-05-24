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
  - Devices in a Local Area Network are only able to communicate with other devices connected to the same hub or switch i.e. the scope of communication for the devices on this network has a geographical limitation.

- Inter-network Communication
  - To allow for communication between stand alone LANs, rounters are used.
  - Routers are network devices that manage network traffic between LANs
  - So for any network traffic to access a pariticular network, it has to routed through the router for that network.

- Internet: can be thought of as a network of a large number of networks. The networks are connected to each other through a system of routers that manage the network traffic.

## Protocols

- How are so many different kinds and makes of devices able to connect to and communicate through the Internet?

- Protocols: A set of rules that govern the exchange or transmission of data.--> **Change to own words**

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

Just as with human converstation, there are different aspects of network communication. For example, one aspect is the structure of a single message. Another is, the flow and order of all the messages. Different protocols govern these different aspects of network communication. 

Another reason for so many different protocols, is that some times the same aspect of network communication needs to be addressed in a different way for a specific use case. So different protocols address the same aspect of network communication in a different way.

## A Layered System

- Different protocols can be grouped togather according to the different aspects of communication that they serve.
- These groups can be thought of as working within different layers of the overall network communication system.

- The OSI model and the Internet Protocol Suite (TCP/IP model or DoD model) are two models that try to modularize and structure the overall system of network communication into a layered system. 

- TCP/IP Model divides the layers according the scope of communication
- OSI Model divides the layers according to the function that each layers serves.

- Application Layer (TCP/IP) -> Application, Presentation, Session (OSI Model)
- Transport (TCP/IP) -> Transport (OSI Model)
- Internet (TCP/IP) -> Network (OSI Model)
- Link (TCP/IP) -> Datalink, Physical (OSI Model)

### Data Encapsulation

Data encapsulation within the context of network communication models is implemented through the use of Protocol Data Units which are units/blocks of data transmitted over a network. PDUs have a header, a data payload and a footer. The header and footer contain protocol specific meta-data while the actual data that needs to be transfered is the data payload.

We can think of PDUs as being transferred over the network through the different protocol layers. Each protocol layer has a different name for this PDU. When it is at the Transport Layer its known as a segment in TCP protocol or a datagram in UDP protocol. At the Internet/Network Layer it is called a packet while at the Link/Data Link Layer its called a frame. 

Each of these protocol layers takes the complete block of data (PDU) from the layer above and encapsulates it into a data payload and gives it a header (and a footer, in some cases). It doesn't need to know anything about the data payload of the PDU at the layer above it. Each protocol can perform its function without having any information about the layer above it or below it.

This creates a seperation of concerns between the different protocols at different layers. No protocol at one layer needs to have any information about how another protocol at a different layer is implemented for those protocols to work togather in a system. 

This also provides us with different levels of abstration. We can work with any type of protocol at one layer without concerning ourselves with lower level protocols.

## The Physical Network

The physical layer of the OSI model is concerned with the actual tangible parts of a network through which the data is transfered over the network. These physical parts, which include cables, wires, routers, switches and even radio waves, are governed by physical rules and laws. These laws and rules put limitations on how the data is actually transferred at the physical layer. For example, the speed of light and electrical signals, the fistance a radio wave can travel etc. all determine the limitations of the physical network. These characteristics of the physical network have an impact on how protocols at higher levels of abstration will perform.

At the physical layer, the data being transferred is binary data that needs to converted to some type of signals. These signals could electrical or light signals or radio waves depending on the medium.

### Characteristics of the Physical network

The main characteristics of the physical network that relate to its performance are latency and bandwidth.

Latency is a measure of the time it takes for a unit of data to travel from one point in the network to another.**Words**

Bandwidth is a measure of the amount of data that can be transferred over a network per unit time.

The overall latency of a network connection is based on several elements:

1. Propagatoin delay: is the time it takes for some data to go from the sendor to the intended receiver. It is the determined by dividing the distance to be travelled by speed.

2. Transmission delay: is the time it takes for some data to be transmitted between different links in the network.

3. Processing delay: is the time it takes for some data to be processed when it is being transmitted between links.

4. Queuing delay: is the time spent by some data waiting in queues before being processed

The total latency between two points is the sum of all the above latencies.

**Last-mile latency**: Most of the delays involved in transmitting data across a network occur at the network edge i.e. at points closest to the end points. The delays that occur at network edge are reffered to as last-mile latency.

**Round-trip time**: is total time it takes to send a network signal to the intended receiver and receive a response or acknowledgment back.

## Link/ Data Link Layer

For devices connected over a physical network to be able to communicate, we need to establish rules for their communication. One of the most important rules for this communication is being able to idenitfy the device that we want to communicate with. 

The Link/ Data Link layer is mostly concerned with identification of devices in the physical network and transferring data between these devices. What happens at this layer is essentially creating an interface between the physical layer and the logical layers above.

At this layer, the mostly used protocol is the Ethernet Protocol. The most important aspects of this protocol are framing and addressing:

### Ethernet Frames

Ethernet Frames are a PDU at the Link/ Data Link layer. These PDUs encapsulate data from the layer above i.e, the Internet/ Network layer. (Link/ Data Link layer is the lowest layer at which encapsulation takes place) **Own Words**

The ethernet frame brings a logical structure to the binary data being transferred at the physical layer. Although, the data in an ethernet frame is still in bits, but the structure of the frame defines what is actually the data to be transferred i.e. data payload and what is the meta-data i.e. the headers and footers.

The identification of the different parts of a frame is based on the lengths of the different fields and the order in which they appear within the frame.

An Ethernet Frame comprises of the following:

1. Preamble and SFD(SOF): The Preabmle and the SFD are sent to a device before the ethernet frame is sent. This is done to synchronize with the receving device. (The preamble notifies the device to expect frame data) **words** and the SFD provides the starting point of the frame. Preamble is 7 bytes and SFD is one byte.
2. Source and Destination MAC address: Six bytes each, source address is the address of the device that created the frame. This can change. Destination address is the address of the device for which the data payload is intended.
3. Length: 2 bytes, Size of the data payload
4. DSAP, SSAP, Control: DSAP and SSAP provide the network protocol used for the data payload. Control provides the communicatio mode for the frame. 
5. Data Payload: 42 to 1497 bytes, the complete PDU from the layer above.
6. Frame Check Sequence: 4 bytes, The device that sends the frame, also generates a checksum from the frame data using an algorithm. The receiving devices uses the same algorithm to generate a checksum from the frame data it receives. It compares both, and if they are not the same that particular frame is dropped. Ethernet does not retransmit any dropped frames. It is upto the higher level protocols to manage lost data.

**Interframe Gap** IFG is the delay between transmitting two consecutive frames.

### MAC Address

All network enabled devices are given a unique address by the manufacturer which usually does not change. This is called a MAC address and since it is linked to a physical device it is also called a physical address or burned-in address. MAC addresses are a sequence of six two digit hexadecimal numbers. All network hardware manufacturers are assigned a range of addresses so that each device has a unique MAC address.

In a network, where all hosts are connected to a hub, a frame would be sent to the hub which will distribute it to all devices on the network. Each device would compare its own MAC address to the Destination MAC address in the frame. If they do not match, the device will drop the frame. Only that device will accept the frame for which its own MAC address matches the Destination MAC address.

A switch on the other hand only sends a frame to the device for which the frame is intended i.e. the device with the destination MAC addresss. A switch keeps an updated record of the MAC addresses of the devices connected to it with each port on the switch associatd to a single MAC address. This record is called a MAC address table.

Although MAC addresses can be used to conduct communication over a local area network, they would not work well to conduct inter-network communication specially for a large network of networks. The routers connecting the networks togather would need to keep a record of which MAC addresses can be accessed via other routers. As this network would grow larger, it would become an almost impossible task to keep track of which MAC addresses are on which network. It's not a scalable solution due to the fact that MAC addresses are neither logical nor heirarchical i.e. they are tied to a specific physical device and they cannot be broken down into sub divisions.

## The internet/ Network Layer

The main concern of protocols at this layer is to facilitate communication between devices on different networks.

The most commonly used protocol at this layer is the Internet Protocol(IP). Two versions of IP are used: IPv4 and IPv6. The main features of the two verions of the protocol are the same.

- Routing capability via IP addressing **words**
- Encapsulation of data into packets **word**

### Data Packets

The PDU in the IP Protocol is known as a data packet. It consists of a Header and a Data Payload. The payload of an IP packet is the PDU from the above Transport Layer which is either a TCP segment or a UDP datagram. The header is divided into logical fields which contain meta-data used for the transportation of the packet. The data within an IP packet is in bits with the logical division of those bits into header fields and payload being based on the size of those fields and the order of those fields.

#### Data Packet Header Fields

- Version: IPv4 or IPv6
- ID, Flags, Fragment Offset: related to fragmentation of a data packet.
- TTL: Time to Live, the maximum number of hops a packet can take before being dropped
- Protocol: Protocol used for the data payload, TCP or UDP
- Checksum: error checking value, dropped packets are not retransmitted by IP.
- Source Address: 32-bit IP address of the sender of the packet
- Destination Address: 32-bit IP address of the intended recipient.

### IP Addresses

IP addresses are assigned to devices in a logical fashion as they join a network. An overall network is divided into logical subnetworks forming a network heirarchy, where each local network is assigned a range of IP addresses. Any device can only be assigned an IP address within the range assigned to local network it is connected to.

IPv4 addresses are 32 bits in length. Divided into 4 sections with each section 8 bits. Each of the sections is a number between 0 and 255.

Address at the start of the range is known as the network address and the one at the end of the range is called the broadcast address. Addresses between the network address and the broadcast address can be assigned to devices on the local network.

Network Address of a range of IP addresses identifies a specific network segment. So if a router needs to send a packet to a specific IP address in a range, it only needs to keep track of which router on the network is the gateway to the subnetwork with that network address. It does not need to have a record of all the IP addresses in a range. This logic creates the heirarchical structure of IP addresses. Dividing a network into smaller parts is called sub-netting. We can divide subnets into further subnets within that range.

#### Routing Table

The list of network addresses stored on a router is knows as its local routing table. When a IP packet arrives at a router, the router matches the destination IP with the network addresses stored in its routing table. Based on the network address that matches the destination IP, the router will then choose the best route for the packet.

The network address defines a range of addresses within a particular subnet. The matching network address will determine where in the network heirarchy the subnet exists. **words**

### IPv6

Uses 128 bit addresses. Eight 16-bit blocks.
