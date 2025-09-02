# How Apps Access Hardware Services via the OS

## 1. Applications Request Access to Hardware Services

When an application (app) needs to use hardware components—such as the CPU, memory, storage devices, input/output devices, or network interfaces—it cannot interact with the hardware directly. Instead, the app must request access to these services in a controlled and safe manner.

## 2. The Role of the Operating System (OS)

To maintain system stability, security, and efficient resource management, all requests from apps to access hardware must go through the Operating System (OS). The OS acts as an intermediary between the applications and the physical hardware.

- This process ensures that apps cannot misuse or damage hardware resources.
- The OS provides a consistent and standardized interface for hardware access.

### System Calls: The Bridge Between Apps and the Kernel

Applications interact with hardware by making **system calls**—special requests sent to the OS to perform operations like reading from a disk, sending data over a network, or allocating memory.

- System calls are implemented inside the **Kernel**, which is the core component of the OS.
- The kernel handles these calls by managing hardware resources and enforcing security policies.

### What is the Kernel?

The **Kernel** is the central part of the Operating System responsible for:

- Managing hardware resources.
- Controlling process execution.
- Handling memory and storage management.
- Providing security and access control.
- Facilitating communication between hardware and software.

Because the kernel operates at a low level, it can safely and efficiently control hardware while keeping apps isolated from direct hardware access.
