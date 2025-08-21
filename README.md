# Custom MAC Unit Deployment in Neural Network

This project focuses on the **deployment of a custom Multiply-Accumulate (MAC) unit** to accelerate neural network computations for handwritten digit recognition. Multiply-Accumulate operations are at the heart of every neural network layer, and optimizing them in hardware significantly reduces computational latency and power consumption. By leveraging **precision-scalable multipliers** and **domino logic circuits**, the design achieves improvements that are well-suited for edge and embedded systems.

Unlike traditional CPU/GPU implementations, the hardware-based approach maps neuron operations directly onto digital logic, enabling parallelism, reduced instruction overhead, and lower energy cost per operation. The result is a design that preserves accuracy while delivering real-time performance in resource-constrained environments.

---

## Key Features
- **Custom MAC Unit**: Specialized arithmetic block designed to handle multiplication and accumulation with reduced latency, forming the computational backbone of the neural network.  
- **PSMAC Multiplier**: Provides precision scalability, balancing accuracy and energy efficiency by dynamically adjusting operand precision.  
- **Domino Logic Synthesis**: High-speed circuit technique used during ASIC synthesis to reduce propagation delay and increase throughput.  
- **Parameterizable Design**: Neurons and layers are designed as flexible Verilog modules, allowing configurability for different architectures and network sizes.  
- **Hardware-Aware Implementation**: Specifically optimized for embedded and edge computing scenarios where performance per watt is critical.  

---

## Applications
- Automated document processing  
- Digital assistants  
- Biometric authentication  
- Edge/embedded AI accelerators  

---

## Outcome
By combining a **custom MAC unit**, **precision-scalable multipliers**, and **domino logic circuits**, this project delivers a **fast, power-efficient, and accurate hardware implementation** for handwritten digit recognition using the MNIST dataset.  

Compared to conventional implementations, the design achieves:  
- **Lower power** (reduced dynamic switching due to optimized MAC design)  
- **Improved speed** (domino logic acceleration)  
- **Maintained accuracy** (no degradation despite quantization and hardware constraints)  

This makes the framework a strong candidate for **edge AI deployment**, where low-power real-time character recognition is essential.
