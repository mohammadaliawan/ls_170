## The Internet
### Have a broad understanding of what the internet is and how it works

LaunchSchool *The internet is a vast network of networks. It is comprised of both the network infrastructure itself (devices, routers, switches, cables, etc) and the protocols that enable that infrastructure to function.*

The internet can be thought of as a global network that connects a large number of Local Area Networks all over the world and allows communication between these networks. The internet consists of the physical network infrastructure (routers, switches, computers/other devices and cables) and the set of rules or protocols that govern how this infrastructure works.

#### Protocols

There are countless types of devices that need to communicate over the internet. They have different models, makes etc. The way we can make sure that these different types of devices can successfully communicate with each other over the internet, is by defining certain rules for communication that all devices follow. These rules are called protocols i.e. a collection of rules of that control the transfer of data over the internet.

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
TCP Segment
IP Packet
Ethernet Frame

### Understand the characteristics of the physical network, such as latency and bandwidth

#### Latency

Latency is used to signify the delay between the moment some data is transmitted from one location in a network and the moment it arrives at its destination i.e. it measures the time it takes for some data to travel from one point in a network to another.

A network system's bandwidth is the amount of data that can travel over this network per unit of time.

A network's overall latency is determined by multiple types of delays that occur in a network. Once combined, all these delays provide a network's overall latency.

These delays are:
1. Propagation delay: is the time it takes for data to travel from one point to another over a network and is determined by distance the data has to travel and the speed with which it can travel which in turn is based on the medium of transfer. So propagation delay is the distance divided by the speed of travel.
2. Transmission delay: 
3. Processing delay
4. Queuing delay

### Have a basic understanding of how lower level protocols operate


### Know what an IP address is and what a port number is


### Have an understanding of how DNS works


### Understand the client-server model of web interactions, and the role of HTTP as a protocol within that model



## TCP & UDP
Have a clear understanding of the TCP and UDP protocols, their similarities and differences
Have a broad understanding of the three-way handshake and its purpose
Have a broad understanding of flow control and congestion avoidance

## URLs
Be able to identify the components of a URL, including query strings
Be able to construct a valid URL
Have an understanding of what URL encoding is and when it might be used

## HTTP and the Request/Response Cycle
Be able to explain what HTTP requests and responses are, and identify the components of each
Be able to describe the HTTP request/response cycle
Be able to explain what status codes are, and provide examples of different status code types
Understand what is meant by 'state' in the context of the web, and be able to explain some techniques that are used to simulate state
Explain the difference between GET and POST, and know when to choose each

## Security
Have an understanding of various security risks that can affect HTTP, and be able to outline measures that can be used to mitigate against these risks
Be aware of the different services that TLS can provide, and have a broad understanding of each of those services