## The Internet
### Have a broad understanding of what the internet is and how it works

LaunchSchool *The internet is a vast network of networks. It is comprised of both the network infrastructure itself (devices, routers, switches, cables, etc) and the protocols that enable that infrastructure to function.*

The internet can be thought of as a global network that connects a large number of Local Area Networks all over the world and allows communication between these networks. The internet consists of the physical network infrastructure (routers, switches, computers/other devices and cables) and the set of rules or protocols that govern how this infrastructure works.

#### Protocols



There are countless types of devices that need to communicate over the internet. They have different models, makes etc. The way we can make sure that these different types of devices can successfully communicate with each other over the internet, is by defining certain rules for communication that all devices follow. These rules are called protocols i.e. a collection of rules of that control the transfer of data over the network.

#### Layers of the overall network communication system

LaunchSchool *Different types of protocol are concerned with different aspects of network communication. It can be useful to think of these different protocols as operating at particular 'layers' of the network.*

Communication over the internet follows certain rules or protocols. There are numerous protocols that govern different aspects of network communication or the same aspect but for specific cases. Different aspects of network communication are structure of the message, flow and order of the messages. For exampe, TCP and HTTP address different aspects of communication. TCP addresses the rules for transfer of messages between applications while HTTP governs the structure of those messages.

These protocols can be grouped based on the aspect of communication they serve. These protocol groups can be thought of as working within specific layers of the network communication system.

The OSI model and the Internet Protocol Suite (TCP/IP model or DoD model) are two models that modularize and structure the overall system of network communication into a layered system. 

- TCP/IP Model divides the layers according the scope of communication
- OSI Model divides the layers according to the function that each layers serves.

- Application Layer (TCP/IP) -> Application, Presentation, Session (OSI Model)
- Transport (TCP/IP) -> Transport (OSI Model)
- Internet (TCP/IP) -> Network (OSI Model)
- Link (TCP/IP) -> Datalink, Physical (OSI Model)

#### Data encapsulation

LaunchSchool *Encapsulation is a means by which protocols at different network layers can work together. Encapsulation is implemented through the use of Protocol Data Units (PDUs). The PDU of a protocol at one layer, becomes the data payload of the PDU of a protocol at a lower layer.*

The overall network communication system of the internet can be modularized and structured into layers where different protocols function at different layers. For this layered system to be truly modular, a particular protocol at one layer should be able to perform its function without having any information about the protocol at the layer above or below. To achieve this, the entire unit of data (called a PDU) of a protocol at one layer is encapsulated into the data payload of the PDU of a protocol at a layer below.

Data encapsulation allows protocols at different layers to work togather without having any information about how lower or higher level protocols are implemented.

HTTP Request/Response
TCP Segment or UDP Datagram
IP Packet
Ethernet Frame

### Understand the characteristics of the physical network, such as latency and bandwidth

LaunchSchool *_The physical network is the tangible infrastructure that transmits the electrical signals, light, and radio waves which carry network communications._*

#### Latency

Latency is used to signify the delay between the moment some data is transmitted from one location in a network and the moment it arrives at its destination i.e. it measures the time it takes for some data to travel from one point in a network to another.

A network system's bandwidth is the amount of data that can travel over this network per unit of time.

A network's overall latency is determined by multiple types of delays that occur in a network. Once combined, all these delays provide a network's overall latency.

These delays are:
1. Propagation delay: is the time it takes for data to travel from one point to another over a network and is determined by distance the data has to travel and the speed with which it can travel which in turn is based on the medium of transfer. So propagation delay is the distance divided by the speed of travel.

2. Transmission delay: The journey of data from a certain point in the network to another point in a network is usually not direct. Instead data has to be transmitted over several nodes/links in the network. These nodes are routers that process the data and transmit it to the next node/router along the path until it reaches its final destination. Transmision delay is a measure of the time it takes for data to traverse all these nodes/links along the path.

3. Processing delay: Data is processed at each node along the path to the destination point. Processing delay measures the time it takes for data to be processed at each node along the path.

4. Queuing delay: Network devices have certain limits on the amount of data that they can process at one time. So if the amount of data is more than its capacity, it queues the data. The amount of time data spends in queues is the queuing delay.

5. Last-mile latency: is the time it takes for a signal to travel from an ISP's network to the final destination network. Most of the transmission, processing and queuing delays occur near these end points of the network i.e. at the network edge. At the network edge network hops are more frequent and shorter which increases the transmission, processing and queuing delays.

6. RTT: Round-trip time: The total time it takes to send a signal over the network and to recieve a response back.

Bandwidth bottleneck:A point in the network where the bandwidth changes from high to low is called a bandwidth bottle neck. 

Bandwidth does not remain the same across the network. There will be points where the bandwidth is very high (usually in the core network) and some points where the bandwidth is relatively low.

### Have a basic understanding of how lower level protocols operate

#### Link/Data Link Layer

**Ethernet** is the collection of rules that enables transfer of data between devices on the same local area network.

Simply connecting physical network devices such as routers, switches, cables and computers does not enable them to start communicating. We need to define the rules or protocol for this communication.

The most important part of the protocols operating at the Link/Data Link layer has to do with identification of the network devices in the physical network and transfering data across these devices. 

**Need to check this** *_The Link/Data link layer provides an interface between the physical network layer and the logical layers above._*

Ethernet protocols is usually used at the Link/Data Link layer. Ethernet cables are used to connect network devices such as hosts, switches and routers.

Two important aspects of the Ethernet Protocol are framing and addressing.

Launch School *_Ethernet uses MAC addressing to identify devices connected to the local network._*

##### Ethernet Frames

- Ethernet frames are a Protocol Data Unit
- They encapulate data from the layer above i.e. the Internet/Network Layer. The PDU from the Internet/Network layer becomes the data payload of the PDU of the Ethernet Protocol.
- The lowest layer at which encapsulation of data starts is the Link/ Data Link Layer. At the Physical layer data being transferred does not have any logical structure. It is just a stream of bits as electrical, light or radio waves signals. The Ethernet Protocol at the Link/Data Link layer adds logical structure to the data.
- This structure defines which part of the PDU is the actual data payload and which is the metadata i.e. the headers and the footer.
- The metadata provides information about how to transport the ethernet frame.
- THe different fields of data within a frame are identified based on their size in bytes and the order in which they appear within the frame.

The different parts of the Ethernet Frame are:
1. **Preamble and SFD:** Preamble and the Start of Frame Delimiter are sent to the receiving device to synchronize with the device. The Preamble and SFD inform the receiving device that data being sent will be frame data and the starting point of that frame. Preamble: 7 bytes, SFD: 1 byte
2. **Source and Destination MAC address:** Six bytes each, source address is the address of the device that created the frame. This can change. Destination address is the address of the device for which the data payload is intended.
3. **Length:** 2 bytes, Size of the data payload
4. **DSAP, SSAP, Control:** DSAP and SSAP provide the network protocol used for the data payload. Control provides the communication mode for the frame which helps with flow control.
5. **Data Payload:** 42 to 1497 bytes, the complete PDU from the layer above e.g. an IP Packet.
6. **Frame Check Sequence:** 4 bytes, The device that creates the frame, generates a checksum from the frame data using an algorithm. The receiving devices uses the same algorithm to generate a checksum from the frame data it receives. It compares both, and if they are not the same that particular frame is dropped. Ethernet does not retransmit any dropped frames. It is upto the higher level protocols to manage lost data.

**Interframe gap(IFG)** is a small gap between transmission of two ethernet frames. This is specified by network device that creates the ethernet frame. It depends on the capability of the ethernet connection and leads to the transmission delay part of the overall latency of the network connection.

##### MAC Addresses

- MAC addresses are assigned to network enabled devices when they are manufactured. They are also called physical addresses or burned-in addresses.
- It should be unique and usually does not change. Specific to a physical device
- MAC addresses are provided as a series of six two digit hexadecimal numbers.
- Manufacturers are assigned with a range of these six hexadecimal numbers.
- Hubs transfer the frame to all the devices connected to its network. Only the devices for which the destination MAC address matches accepts the frame.
- Switches send the frame only to that device which has the destination MAC address.
- A switch keeps an up to date record of the MAC addresses of the devices connected to it called a MAC Address Table. The MAC Address Table contains the MAC addresses as well as the ports of the switch associated with those MAC addresses. So when it receives a frame, it sends it to the correct device by first checking the destination MAC address in the frame header and directing it to the port associated with that MAC address.

Problem with MAC addresses: It is possible to conduct inter-network communication just using MAC addresses, however, this solution is not scalable due to some characteristics of MAC addresses. MAC address are physical addresses instead of logical, that are associated with a specific device and that they are flat instead of hierarhical so it cannot be broken down into subdivisions.

#### Internet/ Network Layer

The main function of the protocols at the Internet/ Network layer is to help devices/ hosts on different networks to communicate. The primary protocol used at this layer is the Internet Protocol (IP). It has two versions IPv4 and IPv6. 

The main characteristics of the two versions are: Routing data between devices through IP addressing and Encapsulation of data into packets.

##### Data Packets

The PDU in the IP Protocol is known as a packet. It consists of a Header and a Data Payload. The payload of an IP packet is the PDU from the above Transport Layer which is either a TCP segment or a UDP datagram. The header is divided into logical fields which contain meta-data used for the transportation of the packet. The data within an IP packet is in bits with the logical division of those bits into header fields and payload being based on the size and the order of those fields.

- Version: IPv4 or IPv6
- ID, Flags, Fragment Offset: related to fragmentation of a data packet if the the Transport layer PDU is too large to sent as one packet
- TTL: Time to Live, the maximum number of hops a packet can take before being dropped
- Protocol: Protocol used for the data payload, TCP or UDP
- Checksum: error checking value, dropped packets are not retransmitted by IP.
- Source Address: 32-bit IP address of the sender of the packet
- Destination Address: 32-bit IP address of the intended recipient.

##### IP Addressing

- IP addresses are assigned to devices logically as they join a network. They are not tied to a specific device or host on the network like MAC addresses are.
- Each local area network has a range of IP addresses available to it. This range of IP addresses is based on a network heirarchy which is the result of splitting the overall network into logical subnetworks with each subnetwork assigned a range of IP addresses.



**Network Address** is the IP address at the start of a range of IP addresses that are assigned to a local network while the address at the end of the range is defined as the **broadcas**t address.

Addresses between the network address and the broadcast address can  be assigned to devices on the network.

Network Address helps to identify a specific network segment on an overall network. So routers only need to keep a record of the network addresses for the different network segments on the network and the routers which control access to those network segments. This is what creates the heiarchical structure within the network.
  
The splitting of a network into segments is referred to as subnetting. 

##### Routing and Routing Tables

A router stores a list of network addresses in a local routing table. Each network address in the list corresponds to a range of IP addresses within a specific subnet. The destination IP address of an IP Packet is compared to the stored network addresses and matching network address is used to select the best route for Packet to its destination IP address.

##### IPv6
IPv6 address are 128 bits in length and divided into 8 sections of 16 bits each. IPv6 was created because of the limitations of IPv4 which provide only 4.3 billion possible addresses where as IPv6 provides 340 undecillion possible addresses. 

IPv6 has a different header structure for Packets and does not perform error checking. It is left to the Link/Data Link layerr.

### Know what an IP address is and what a port number is

IP address is a sequence of characters that uniquely identifies a device that is using the Internet Protocol (IP) to communicate with other devices. There are two version of IP addresses. IPv4 addresses are 32 bits in length and divided into four section of 8 bits each while IPv6 address are 128 bits in length and divided into 8 sections of 16 bits each.

__________________________________________ ### Have an understanding of how DNS works(COME_BACK)


### Understand the client-server model of web interactions, and the role of HTTP as a protocol within that model

In the client-server model, the client is a device that is running applications that sends requests to the server. The server is a device that processes those requests and send an approriate responds. We could say that client devices request some data while server devices respond to that request by providing that requested data.

HTTP is a set of rules or a protocol for structuring the requests generated by a web client. A web client sends an HTTP request while a web server application on the server responds with an HTTP response.
