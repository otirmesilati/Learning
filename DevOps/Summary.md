# Dev





## Languages


### Theory 

- > *Procedural*

- >> **C**
- >> **Rust**
- >> **Nim**
- >> **Zig**

- > *Object Oriented*

- >> **Java**
- >> **Gleam**
- >> **Go**
- >> **Kotlin**
- >> **C++**
- >> **Dart**
- >> **C#**
- >> **VB**

- > *Functional* 

- >> **Elixir**
- >> **Haskell**
- >> **OCaml**
- >> **Clojure**

- > **Scripting Languages**

- >> **VimScript**
- >> **Lua**
- >> **JavaScript**
- >> **Ruby**
- >> **Python**
- >> **R**
- >> **Perl**

- > **Command Languages**

- >> **Bash**
- >> **PowerShell**
- >> **CMD**

- > *Running*

- >> **Binary/On-Disk/Working Directory**
- >>> **c/c++/rust/nim/haskell/ocaml**
- >> **Binary/On-Memory/Deleted**
- >>> **Zig/Kotlin/Dart/Elixir/Clojure**
- >> **Wierdos**
- >>> **Java/Gleam/Go/C#**
- >> **Interpreted**
- >>> **VimScript/Lua/JavaScript/Ruby/Python/R/Perl/VB**
- >> **Run Through Shell**
- >>> **Bash, Posh, CMD**


### Practice

- > *Binary/On-Disk/Working Directory group*

- >> **C**
- >>> **1. Q: Compile a C Program into workdir**
- >>> **2. Q: Run a compiled C program**
- >> **Rust**
- >>> **1. Q: Compile a Rust program into workdir**
- >>> **2. Q: Run a compiled rust program**
- >> **Nim**
- >>> **1. Q: compile a Nim program without messages into workdir**
- >>> **2. Q: Run a compiled Nim program**
- >> **Zig**
- >>> **1. Q: Compile a Haskell program into workdir**
- >>> **2. Q: Run a compiled Haskell program**

- > *Binary/On-Memory/Deleted*

- >> **Zig**
- >>> **1. Q: Compile & Run a zig program**
- >> **Kotlin**
- >>> **1. Q: Compile & Run a kotlin program**
- >> **Dart**
- >>> **1. Q: Compile & Run a dart program**
- >> **Elixir**
- >>> **1. Q: Compile & Run an Elixir program**
- >> **Clojure**
- >>> **1. Q: compile & Run a clojure program**

- > *Interpreted*

- >> **VimScript**
- >>> **1. Q: Run a VimScript script inside the editor**
- >> **Lua**
- >>> **1. Q: Run a Lua script**
- >> **JavaScript**
- >>> **1. Q: Run a JavaScript script**
- >> **Ruby**
- >>> **1. Q: Run a ruby script**
- >> **Python**
- >>> **1. Q: Run a python script**
- >> **R**
- >>> **1. Q: Run an R script**
- >> **Perl**
- >>> **1. Q: Run a perl script**
- >> **VisualBasic**
- >>> **1. Q: Run a Visual Basic Program**

- > *OS through shell runs*

- >> **Bash**
- >>> **1. Q: Run a bash script**
- >> **PowerShell**
- >>> **1. Q: Run a powershell script**
- >> **CMD**
- >>> **1. Q: Run a batch script**



## Language Features


### Theory

- > *Procedural*

- >> **Libraries**
- >> **Environmental DI**
- >> **Records**
- >> **Data Streaming**
- >> **Primitive Literals**
- >> **String Formatting**
- >> **Operators**
- >> **Variables**
- >> **Flow Control**

- > *Object Oriented*

- >> **ADT Implementation**
- >> **Abstraction**
- >> **Encapsulation**
- >> **Inheritance**
- >> **Polymorphism**
- >>> **Dynamic Dispatch**
- >>> **Alternative - Reflective Programming**
- >>>> **RTTI**
- >>>> **Instanceof**
- >> **Exceptions**

- > *Functional*

- >> **Immutability**
- >> **Pure Functions**
- >> **First Order Functions**
- >> **Function Composition**
- >> **Declarative vs imperative syntax**

ex: let sum = 0;
for (let i = 0; i < arr.length; i++) {
  sum += arr[i];
} VS const sum = arr.reduce((a, b) => a + b, 0);

- >> **Common Features (maybe move these to the others ?)**
- >>> **No Side Effects**
- >>> **Recursion replacing loops**
- >>> **Referential Transperancy**
- >>> **Lazy Evaluation**

### Practice

- > *5 Coding questions intro*
- > *Point Class*
- > *Banking account dispatch function*



## Code Design


### Theory

- > *Design Patterns*

- >> **Creational**
- >>> **Singleton**
- >>> **Prototype**
- >>> **Builder**
- >>> **Factories**
- >> **Structural**
- >>> **Adapter**
- >>> **Decorator**
- >>> **Facade**
- >>> **Proxy**
- >>> **Composite**
- >>> **FlyWeight**
- >>> **Bridge**
- >> **Behavioral**
- >>> **Strategy**
- >>> **State**
- >>> **Memento**
- >>> **Delegator**
- >>> **Iterator**
- >>> **Mediator**
- >>> **Visitor**
- >>> **CoR**
- >>>> **CoR vs Pipeline**
- >>> **Observer**
- >>> **Command**
- >>> **Template Method**

- > *Generics*
- >> **Templates**
- >> **Collections**
- >> **Sorting**
- >> **Searching**

### Practice


- > **Singleton**
- >>> **Problems it solves**
- >>> **Why**
- >>> **UML**
- >>> **Implementation**


## Embedded

- >> **opcode**

- > Firmware Engineering

- > System Engineering

### Theory

### Practice



## Desktop & Mobile

- > *Mobile*
- >> **app stores**
- >>> **Q: What is a mobile application ?**
- >>> **Q: Application needs to be approved on ?**
- $$$ **A: on the store**
- >>> **Q: Apple compared to Samsung ?**
- $$$ **A: More stricter for approving apps, downloadable APKs**
- >> **emulator vs simulator**

- > *Desktop*

- >> **Microsoft Apps with VB**
- >>> **Project Strcuture**
- >>>> **Q: Added files to a normal VB project?**
- $$$$ **A: Forms, Designer, resx for assets**
- >>> **Views**
- >>>> **Q: how do we add GUI components?**
- $$$$ **A: In the design view, and watch the code's view added section as a result**
- >>>> **Q: How to handle a components fields?**
- $$$$ **A: By changing them in the properties window**

### Theory

### Practice



## Web Development


### Theory

- > *Client Side*
- >> **Intro**
- >>> **Q: Three basic components, and their roles ?**
- $$$ **A: HTML - structure, CSS - appearance, JS - functionality**
- >>> **Q: Where does the front run ?**
- $$$ **A: User's web-browser**
- >>> **Q: Benefits of running on the browser?**
- $$$ **A: Portable, RE tight coupling untangle**
- >> **HTML**
- >> **CSS**
- >> **JavaScript**
- >>> **DOM**
- >> **Postman**
- >>> **Intro**
- >>>> **Q: what is postman?**
- $$$$ **A: Cient tool for creating/sending/receive API calls**
- >>>> **APIs & entrypoints**
- >>> **Workspace**
- >>>> **Variables**
- >>> **GET requests**
- >>> **POST requests**
- >> **Axios**
- >> **React**
- >> **DevTools**

- > *Server Side*
- >> **Intro**
- >>> **Servers & Runtime environments**
- >> **Page Serving**
- >>> **Static Pages**
- >>> **Dynamic Pages**
- >> **Routing**
- >>> **Request routing**
- >>> **Middleware**
- >> **Authentication & Authorization**
- >>> **JWT**
- >> **MicroServices**
- >> **Dependencies**
- >>> **NPM**
- >>> **Linters**
- >> **Integrations & communications**

- > *NodeJS*
- >> **Intro**
- >> **Event Loop**
- >> **NPM**
- >> **Node Application Structure**
- >> **Module Systems**
- >>> **HTTP Module**
- >>> **FS Module**
- >> **DI'd Environment Variables**
- >> **Middleware**
- >> **Developer Tools**
- >>> **Nodemon**
- >>> **EsLint**


### Practice

- > *HTML*

- > *CSS*

- > **NodeJS**
- >> **Project & Dependencies**
- >> **Modules**
- >> **Routes**
- >> **Developer Tools**

- > *DevTools Debugger*



## Game Development



## Frameworks


### Theory

- > *Technology stacks*
- >> **LAMP**
- >> **MERN**

- > *FrontEnd*
- >> *ReactJS*
- >>> **Intro**
- >>> **Project Structure**

- > *BackEnd*
- >> *ASP .NET core*
- >>> **Projects**
- >>> **Architecture**
- >> *Flask*
- >> *Ruby on rails*
- >>> **Projects**
- >>> **Architecture**
- >> *Laravel*
- >>> **Projects**
- >>> **Architecture**
- > *ExpressJs*
- >> **Intro**
- >> **Backend features**
- >> **Page Serving**


### Practice



## Testing 


### Theory

- > *Unit Tests*

- > *Integration Tests*

- > *AB Testing*


### Practice



## Git


### Theory

- > *Local repository*

- > *Commits*

- > *Branches*

- > *Merging*

- > *Remote Repository*

- > *Version traversal*


### Practice

- > *Install*

- > *Repo Basics*

- > *Commits*

- > *Branches*

- > *Commiting back into branches*

- > *Local repository copies*

- > *Remote repository*


## Jenkins


### Theory 


- > *Intro & CICD*
- >> **Application deployments using CICD**

- > *Architecture & Workers*

- > *Workspace*

- > *Jobs*

- > *Projects*
- >> **Freestyle Project**
- >> **Jenkins Pipeline**
- >>> **Sections**
- >>>> **Environment**
- >>>> **Stages**
- >>>> **Container**
- >>>> **PodTemplate**
- >>> **Variables**
- >>> **Build streaming**

- > *Plugins*

- > *Fingerprints*


### Practice

- > *Install* 

- > *Intro & CICD*
- >> **Application deployments using CICD**

- > *Architecture & Workers*

- > *Workspace*

- > *Jobs*

- > *Projects*
- >> **Freestyle Project**
- >> **Jenkins Pipeline**
- >>> **Sections**
- >>>> **Environment**
- >>>> **Stages**
- >>>> **Container**
- >>>> **PodTemplate**
- >>> **Variables**
- >>> **Build streaming**



## Istio


### Theory

- > *Intro*
- >> **Service mesh**

- > *Architecture*
- >> **Envoy**

- > *Gateways*
- >> **Ingress**
- >>> **Virtual service**
- >> **Egress**

- > *Traffic management*

### Practice

- > *Install*

- > *Service mesh*

- > *Architecture*
- >> **CLI**

- > *Traffic Management*
















# Ops 





## DevOps Culture


### Theory (maybe try to nest some of these?)

- > *Intro*
- >> **The tech Struggle**
- >>> **Q: 8 titles**
- $$$ **A: Business, Dev, Ops, QA, Product, Security, Data, Solution Architect** 
- >>> **Q: Common scalability problems**
- $$$ **A: Team mis-allignment, Communication loosens**
- >>> **Q: Paradox**
- $$$ **A: Intentions are good, results are not so good**
- >>> **Q: Common end goal**
- $$$ **A: Deliver software**
- >>> **Q: DevOps solution**
- $$$ **A: Streamline sotware delivery**
- >>> **Q: Common practices**
- $$$ **A: Strong communication, collaboration, blameless investigation, reducing operational maintenance, improving processes, reducing tech debt, creating trust, managing expectations, enable transperancy**
- >>> **Q: Shared values**
- $$$ **A: Engage in courage, promote honesty, unity**
- >> **IT provisioning hickups**
- >>> **Q: Process**
- $$$ **A: business requirements -> analysts convert to tech requirements -> solution architect designs -> field engineers set up -> hand over to application team**
- >>> **Q: Disadventages**
- >>> **Q: Solutions**
- >>> **Q: First Solutions**
- >> **Humble beginings**
- >> **Let's talk DevOps**
- >> **The Similar philosophies**
- >> **Basic system and developer tools**
- >> **Naive setup**
- >> **DevOps solutions**
- >> **CI solutions**
- >> **CD solutions**
- >> **infrastructure set ups & monitoring solutions**
- >> **culture and work methodology**
- >> **software delivery process automation**

- > *Devops methodology*

- > *12 Factor app*
- >> **Single Code-Base**
- >> **Declare & Isolate Dependencies**
- >> **Configuration**
- >> **Backing Services**
- >> **Build, Release, Run**
- >> **Concurrency**
- >> **Port Binding**
- >> **Disposibility**
- >> **Dev-Prod Duality**
- >> **Logs**
- >> **Admin Process**


### Practice

- > *Anti-Patterns*

- > *For-Patterns*

- > *Faulty-Setups*

- > *Work-Place struggles*
- >> **Betty Business**
- >>> **Problems**
- >>> **Solution**
- >>> **Realization**
- >>> **Consequence**
- >> **Danzo Dev**
- >>> **Problems**
- >>> **Solution**
- >>> **Realization**
- >>> **Consequence**
- >> **Ozzie Ops**
- >>> **Problems**
- >>> **Solution**
- >>> **Realization**
- >>> **Consequence**
- >> **Qing QA**
- >>> **Problems**
- >>> **Solution**
- >>> **Realization**
- >>> **Consequence**
- >> **Petier Product**
- >>> **Problems**
- >>> **Solution**
- >>> **Realization**
- >>> **Consequence**
- >> **Samhita Security**
- >>> **Problems**
- >>> **Solution**
- >>> **Realization**
- >>> **Consequence**
- >> **Diego Data**
- >>> **Problems**
- >> **Annie Architect**


## System 


### Theory

- > *System fundementals in linux*
- >> **Devices**
- >>> **Peripherals**
- >>>> **Keyboard**
- >>>>> **Keyboarding**
- >>> **Network Devices**
- >> **Boot**
- >>> **BIOS**
- >>> **UEFI**
- >> **BootLoader**
- >>> **Grub**
- >> **Init systems**
- >>> **SysVInit**
- >>> **SystemD**
- >> **Run-Levels**
- >>> **Boot targets**
- >> **Architecture**
- >>> **Computing**
- >>> **Memory**
- >>> **Storage & File-System**
- >>>> **Partitions**
- >>>> **Disk management**
- >>> **Execution domains**
- >>>> **Runtime-Environments**
- >>>>> **Bare-Metal**
- >>>>> **Virtualization**
- >>>>> **Containerization**
- >>>> **User-Space**
- >>>> **Kernel-Space**
- >>>> **Variables**
- >> **System-Management**
- >>> **Performance monitoring**
- >>> **Backup strategies**

- > *Desktop Metaphor*

- > *Windows system additions*

- > *MacOS system additions*

- > *Other systems*

### Practice

- > *Scripting*

- > *Boot*

- > *Environmental information*

- > *Navigation*

- > *FS manipulation*

- > *Streams and pagers*

- > *Editors*

- > *Filters*

- > *System level Role-Based-Access*
- >> **System level A&A**

- > *Package managers*

- > *System level Observability*
- >> **Processes**
- >>> ***Services & Daemons***

- > *Configurations & Application state*


## Networking


### Theory

- > *Intro*
- >> **Network Devices**
- >>> **Q: What is a network?**
- $$$ **A: group of systems and peripherals called network devices**
- >>> **Q: Device examples?**
- $$$ **A: PC, Laptop, phone, switch, router, firewall, etc..**
- >>> **Q: roles of switch/router/firewall?**
- $$$ **A: connecting two devices across same/other LAN, enforce traffic rules enforcing blocks and mitigations**
- >> **Device Communication**
- > *NICs*

- > *Protocol models & suites*
- >> **Network models(is this where oci and tcp/ip are?)**
- >>> **OCI**
- >> **Network Suite**
- >>> **TCP/IP**

- > *Protocols*
- >> **Layers 2-4**
- >>> **Internet Protocol**
- >> **Layers 5-7** 
- >>> **Hyper Text Transfer Protocol**
- >>>> **Hyper Text Transfer Protocol Secure**
- >>> **Secure Shell Protocol**
- >>>> **Secure Copy**
- >>>> **Secure Shell File Transfer Protocol**
- >>> **Dynamic Host Configuration Protocol**

- > *Subnetting*

- > *Domain-Name-System*

- > *Network level A&A*
- >> **Authentication**
- >> **Authorization**

- > *Network Topologies*
- >> **Client-Server**
- >>> **Protocols used**
- >>>> **Q: Common protocols used for application layer?**
- $$$$ **A: HTTP/S, S/FTP, SMTP, DNS**
- >>>> **Q: Common protocols used for Transport layer?**
- $$$$ **A: TCP, UDP**
- >>>> **Q: Common protocols used for remote access?**
- $$$$ **A: SSH, Telnet**
- >>>> **Q: Common protocols used for API communication?**
- $$$$ **A: REST, gRPC, WebSocket**
- >>> **HTTP request & response**
- >>>> **Q: term for out going communication ? reply to it ?**
- $$$$ **A: request, response**
- >>>> **Q: what file will a response contain?**
- $$$$ **A: HTML Document**
- >>>> **Q: Common endpoints to receive requests,term for the reqs?**
- $$$$ **A: API endpoints, API calls**
- >>>> **Q: basic request features?**
- $$$$ **A: method, url, header, payload, query params**
- >>>> **Q: Term for mapping requests to endpoints?**
- $$$$ **A: Routing**
- >>> **Document Object Model**
- >>>> **Q: what's a DOM?**
- $$$$ **A: In memory tree Data Structure representing the html file to return**
- >>>> **Q: Purpose ?**
- $$$$ **A: To render site's elements**

### Practice

- > *Environmental information*
- >> **NICs**

- > *Network Traffic*
- >> **Packets**
- >> **Protocols**
- >>> **ARP**

- > *Reachability Utils*
- >> **Protocol Clients**

- > *Subnetting*
- >> **LANs**
- >>> **VLANs**
- >> **WANs**

- > *network traffic managin devices*
- >> **Switch**
- >>> **Network Switching**
- >> **Router**
- >>> **Network Routing**
- >>> *IOS command language*

- > *DNS*

- > 

- > *Security*

- > *UFW*

- > *GPG*

- > *Postman*
- >> *General*
- >>> **Q: What will web APIs mostly be shown as ?**
- $$$ **A: JSONs**
- >>> **Q: How could we find the API features beforehand ?**
- $$$ **A: Reading the docs**
- >>> **Q: What are the general meanings of the status codes?**
- $$$ **A: 200 - Approved, 400 - request error, 500 - server error**
- >> **GET REST API calls**
- >>> **Q: How to send a GET request to https://simple-books-api.click/?**
- $$$ **A: Add to the request URL https://simple-books-api.click/status and press Send**
- >>> **Q: How to re-use requests?**
- $$$ **A: Save them inside a collection**
- >>> **Q: How to untangle hard coding of domain names? shared?**
- $$$ **A: By using request variables, initial value**
- >>> **Q: How to add query params to a request?**
- $$$ **A: adding it at the end of the FQDN**
- >> **POST REST API calls**
- >>> **Q: what is also sent with the request?**
- $$$ **A: a payload**
- >>> **Q: Access modifiers on API endpoints? how to access the latter?**
- $$$ **A: either public or private endpoints, using auth tools**
- >>> **Q: Where are the authentication details usually passed in?**
- $$$ **A: In the headers portion of the request**
- >>> **Q: Basic Auth vs Bearer token?**
- $$$ **A: B64 Encoded vs opaque, expirable ouath supporting json**
- >> **UPDATE REST API calls**
- >> **DELETE REST API calls**
- >> *gRPC cabaplities*
- >> *API Testing*
- >>> **Q: In what programming language will we write our tests?**
- $$$ **A: In JavaScript**
- >>> **Q: how can we check if the request went through?**
- $$$ **A: by testing the status code**

- > *Axios*
- >> **General**
- >>> **Q: What ?**
- $$$ **A: Programmatic API request building Library**
- >>> **Q: Used for?**
- $$$ **A: Retrieving data from 3rd party API**
- >>> **Q: Axios vs Postman?**
- $$$ **A: Programmatic automations vs GUI'd interface**
- >>> **Q: Main features?**
- $$$ **A: CRUD, simultaneous requests, custome headers, transform responses, Error handling, Cancel tokens** 


## DataStores

- > *Storage strategy*
- >> **In Memory**
- >> **On-Disk**

- > *Data Model*
- >> **Relational**
- >> **Non-Relational**

- > *Role*
- >> **System Of Record**
- >> **Cache**
- >> **Search**
- >> **Event Log**


### Theory

- > 


### Practice



## Docker


### Theory

- > *Engine & Runtime*

- > *Unified File System*
- >> **Eficient Rebuilds**
- >> **Build history**
- >> **Container layers**
- >>> **Meta-data layer**
- >> **Copy-on-Write**

- > *Docker images*
- >> **Classic Linux containers**
- >> **Windows Containers**
- >> **MacOS Containers**

- > *DockerFile*
- >> **Directives**
- >> **Dockerfile repositories**

- > *Container life-cycle*

- > *Container storage*

- > *Container networking*

- > *Containerizing microservices*

- > *Docker-Compose*
- >> **Docker Compose services**

- > *Docker in CICD*

- > *Docker security*
- >> **Namespaces**

- > *Container orchestration fundementals*
- >> **Docker Swarm**

- > *Aplication Deployment*

### Practice

- > *Install*

- > *Container Running*

- > *Image handling*

- > *Container commands*

- > *Container Port Mapping*

- > *Container Storage*

- > *Analyzing Containers*

- > *DockerFile Basics*

- > *Docker Compose*

- > *Docker Engine*

- > *Docker Registry*




## Kubernetes


### Theory

- > *Intro*
- >> **The Need**
- >>> **Q: built by, and for? what is it now?**
- $$$ **A: google, handling application deployment in production mode
(like misfit dependencies, long setup times, multiple environments, problems with scaling easily from storage and network perspectives) OSS container orchestrator**
- >> **General**
- >>> **Q: Container Orchestrator? more roles? name meaning?**
- $$$ **A: Automatic container state reconciler, provides storage and networking capabilities for REs, scaling strategies.
Kabarnit(captain)**
- >>> **Q: Supports how many deployment architecture?**
- $$$ **A: multiple**
- >>> **Q: Decouples?**
- $$$ **A: App from infrastructure**
- >>> **Q: ways to set up locally? enterprise? hosted cloud platform?**
- $$$ **A: Docker Desktop, Minikube, kind for local setups, kubeadm for enterprise, GKE/EKS/AKS in the big three cloud platforms**

- >> **Resources**
- >>> **Q: Main goal? groups enabling extendibility?**
- $$$ **A: To bring forth applications together, API groups**
- >>> **Q: what are the api groups?**
- $$$ **A: v1 - pods, nodes, services, configmaps, secrets
apps/v1 - replicasets, deployments, demonset, statefulsets
apiextension/v1 - CRD, CR
batch/v1 - 
storage/v1 - 
networking/v1 -**
- >>> **Q: Two types? two ways of defining the objects?**
- $$$ **A: Resource types (classes) and objects (instances), programatically using manifests and manually using CLIs**
- >>> **Nodes**
- >>>> **Q: Nodes (workers/minions) ? a group of nodes ?**
- $$$$ **A: Machines to run workload on, cluster**
- >>>> **Master node/Control Plane? role ?**
- $$$$ **A node that monitors other nodes, monitors, load balances jobs on fail, holds the api server**
- >>>> **Q: What do we require every node to have ?**
- $$$$ **A: A container runtime to is it will be able to run containers**
- >>>> **Q: where is info gathered from the communication of the master node's API server to the kubelets?*
- $$$$ **A: In the etcd data store**
- >>> **Pods**
- >>>> **Q: what ?**
- $$$$ **A: container wrappers**

- > *Architecture*
- >> **CLI**
- >>> **Q: Intuition?**
- $$$ **A: Enable commands as HTTP requests passed to the API**
- >>> **Q: Main CLIs?**
- $$$ **A: top level CLI - kubectl, ctr - communicating with the containerd daemon, crictl - cli client for communicating with the CRI compatible runtime engine via gRPC exposed unix socket endpoint, nerdctl - can mostly replace ctr, adding a lot of user friendly options and docker cli like feel, operating at bit of a higher level**
- >> **API Server**
- >>> **Q: Intuition?**
- $$$ **A: Handles CLI requests by checking "synatx"**
- >> **Controllers**
- >>> **Q: Intuition?**
- $$$ **A: monitor resource objects and reconcile state**
- >> **etcd**
- >>> **Q: Intuition?**
- $$$ **A: Key-Value store for cluster data**
- >> **Scheduler**
- >>> **Q: Intuition?**
- $$$ **A: watches and selects on which node pods needs to run according to resource quotas, contstraints, and policies**
- >> **Kubelet**
- >>> **Q: Intuition?**
- $$$ **A: running on each node, monitors and reconciles pod state on the node using the runtime**
- >> **ContainQ:er Runtime Interface**
- >>> **Q: Intuition?**
- $$$ **A: Adapter to the Container runtime, that needs to imperativly run/stop containers**
- >>> **Q: Container Runtime Engine ?**
- $$$ **A: wrapper of the runtime + CLI + helper tools**
- >>> **Q: Kubernetes runtime dependency shift ? new docker component?**
- $$$ **A: used to be tightly coupled to the docker runtime, it loosened the coupling later by introducing the CRI adapter, which enables any OCI compatible runtime engine, the containerd project is docker's newly O(pen)C(ontainer)I(nitiative) compatible runtime engine**
- >>> **Q: temporary solution to make the tightly coupled docker runtime CRI alligned? in what version was it removed ?**
- $$$ **A: dockershim, 1.24**
- >>> **Q: what would a valid CRI approved runtime engine would usually include ? **
- $$$ **A: An imagespec to allow pushing/pulling images, a runtime spec to allow for running containers, and a corresponding CLI**

- > *Container Runtime Interface*

- > *App Deployment*
- >> **Pods**
- >>> **pod manifest**
- >> **Replica-Set**
- >>> **RS manifest**
- >> **Deployment**

- > *Cluster Storage*
- >> **Storage class**
- >> **Persistant volume**
- >> **Mounts**
- >> **Bind Mounts**

- > *Cluster Networking*
- >> **Services**

- > *Cluster Security*
- >> *Service account*


### Practice

- > *Install*
- >> **Q: what does it mean to install k8s?**
- $$ **A: install all the architectural components**
- >> **Q: how to install minikube?**
- >> **Q: how to install kubeadm**

- > *Resources*
- >> **Instances**
- >>> **Create & Delete**
- >>>> **Q: Create a resource manually, how to draft?**
- $$$$ **A: kubectl run/create <arguments>, using client dry-run**
- >>>> **Q: How to create a resource programmatically ?**
- $$$$ **A: create the draft, edit, and kubectl apply -f**
- >>>> **Q: How to delete a resource manually ?**
- $$$$ **A: kubectl delete <arguments>**
- >>> **Read & Update**
- >>>> **Q: How to get infromation about a resource?**
- $$$$ **A: either use describe for human friendly explanaition, or get as close to the source using the get -o yaml format**
- >>>> **Q: Re-accuring attributes in all YAML manifests**
- $$$$ **A: APigroup, kind, metadata, spec**
- >>>> **Q: specific attributes when read ?**
- $$$$ **A: pod - status, container status, restarts, node, age
rs -  desired/current/ready pods, container, images, selector
deployment - 
service - 
node**

- > *Architecture*
- >> **configuration**
- >>> **Q: how to get information about APIserver and coreDNS URLs?**
- $$$ **A: kubectl cluster-info**
- >> **ClI**
- >>> **Q: how do nerdctl commands work? compared to others?**
- $$$ **A: They are paralleling docker commands, richer API**

- > *Pods*

- > *Manifests*

- > *ReplicaSet*
- >> **Replication Controller**

- > *Deployment*



## Helm 


### Theory

- > *Intro*
- >> **History**

- > *Architecture*
- >> **CLI**
- >> 

- > *Charts*
- >> **Chart Parameters**
- >>> **Templating**

- > *Rollouts*

- > *Bitnami*

### Practice

- > *Install*

- > *Architecture*
- >> **CLI**

- > *Charts*
- >> **Chart Parameters**
- >>> **Templating**
- >>>> **function templating**

- > *Rollouts*

- > *Bitnami*



## ArgoCD


### Theory

- > *Intro*
- >> **Pull vs Push based methods**

- > *GitOps*


### Practice

- > *Install* 



## Prometheus


### Theory

- > *Intro*

- > *Observability* 
- >> **Logs**
- >> **Traces**
- >> **Metrics**

- > *Architecture*


### Practice

- > *Install*
- >> **Prometheus install**
- >> **Alert Manager**
- >> **Grafana**
- >> **Exporters**

- > *Architecture*

- > *PromQL*



## Ansible 


### Theory

- > *Intro*


### Practice

- > *Install*

- > *Configuration files*

- > *Variables*



## Terraform


## Theory

- > *Intro*
- >> **IaC**
- >> **HCL**

- > *Providers*

- > *Variables*


## Practice

- > *Install*
