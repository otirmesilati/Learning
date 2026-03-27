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
- >>> **Java Gleam Go**
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
- > **Data Streaming**
- > **Primitive Literals**
- > **String Formatting**
- > **Operators**
- > **Variables**
- > **Flow Control**

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

- > *Procedural*
- > *Object Oriented*
- > *Functional*



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

### Practice

- > *Creational*

- >> **Singleton**
- >>> **Problems it solves**
- >>> **Why**
- >>> **UML**
- >>> **Implementation**

- > *Structural*

- > *Behavioral*


## Embedded

- >> **opcode**

### Theory

### Practice



## Desktop & Mobile

- >> **app stores**
- >> **emulator vs simulator**

### Theory

### Practice



## WebDev


### Theory

- > *Client Side*
- >> **Intro**
- >> **HTML**
- >> **CSS**
- >> **JavaScript**
- >>> **DOM**
- >> **Postman**
- >> **Axios**
- >> **React**
- >> **DevTools**

- > *Server Side*
- >> **Intro**
- >>> **Servers & Runtime environments**
- >>>> **NodeJS**
- >> **Page Serving**
- >>> **Static Pages**
- >>> **Dynamic Pages**
- >> **Routing**
- >>> **Middleware**
- >> **Authentication & Authorization**
- >>> **JWT**
- >> **MicroServices**
- >> **Dependencies**
- >>> **NPM**
- >>> **Linters**
- >> **Integrations & communications**


### Practice



## Frameworks


### Theory


- > *ASP .NET core*

- > *Flask*

- > *ExpressJs*


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



## Jenkins

- > *Intro & CICD*

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


### Theory 


### Practice



## Istio


### Theory


### Practice

















# Ops





## DevOps Culture


### Theory 

### Practice



## Linux 


### Theory

### Practice



## Networking



## Databases



## Docker 


### Theory

### Practice

- > *Container Running*


## Kubernetes



## Helm 



## ArgoCD



## Prometheus


















































* ## Libraries

* ## Records

* ## Streams

* ## Literals

* ## String Formatting

* ## Operators

* ## Variables

* ## Control Flow 










# Run Away



* ## Procedural

* ## OOP

* ## Functional

* ## Scripting

* ## Command

