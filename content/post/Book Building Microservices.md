---
author: "Marcus Vechiato"
title: "Insights from Building Microservices by Sam Newman"
date: "2023-05-21"
publish: true
thumbnail: "/obsidian/book_building_microservices.jpg"
tags: 
  - systems design
  - book
  - microservices
--- 

# **Building Microservices: Designing Fine-Grained Systems**

 _Building Microservices_ by Sam Newman provides a structured, pragmatic exploration of the subject, with real-world examples and balanced perspectives. The book covers the nuances of adopting microservices, from foundational principles to advanced topics like observability, security, and organizational structure. For anyone navigating the complexities of microservices, this book is a definitive guide.

![image](/obsidian/book_building_microservices.jpg)
2021 by Sam Newman 

## **Summary**

### **Part I: Foundation**

#### **Chapter 1: What Are Microservices?**

Microservices are independently deployable services modeled around business domains. They prioritise flexibility, technology agnosticism, and clear service boundaries while avoiding shared databases. Newman underscores the importance of independent deployability, arguing that it is the most critical characteristic of microservices.

- **Quote:** _“Don’t share databases unless you really need to... Sharing databases is one of the worst things you can do if you’re trying to achieve independent deployability”_ (p. 8).

#### **Chapter 2: How to Model Microservices**

Modeling effective boundaries for microservices is essential. The chapter introduces domain-driven design (DDD), emphasizing bounded contexts, aggregates, and information hiding. These concepts help create loosely coupled, highly cohesive services aligned with business goals.

#### **Chapter 3: Splitting the Monolith**

Decomposing monolithic systems is a gradual process. Newman advocates for incremental migration using patterns like the Strangler Fig and feature toggles. He stresses avoiding premature decomposition, focusing instead on clear goals and low-coupling strategies.

#### **Chapter 4: Microservice Communication Styles**

Communication between services can follow synchronous (request-response) or asynchronous (event-driven) patterns. Each style has advantages and disadvantages. Newman advises careful consideration of latency, error handling, and coupling when choosing a communication model.

### **Part II: Implementation**

#### **Chapter 5: Implementing Microservice Communication**

This chapter dives into the technologies and practices for microservice communication, including REST, GraphQL, and message brokers. It emphasizes backward compatibility, explicit interfaces, and avoiding accidental breaking changes.

#### **Chapter 6: Workflow**

Workflows across microservices often involve sagas and distributed transactions. Newman explains the pros and cons of each, recommending sagas for their simplicity and scalability.

#### **Chapter 7: Build**

Newman discusses continuous integration (CI) and delivery pipelines for microservices. He evaluates patterns like monorepos and multirepos, providing insights into trade-offs and build strategies.

#### **Chapter 8: Deployment**

Deploying microservices involves navigating containerization, Kubernetes, and serverless options. Newman highlights the importance of automation, infrastructure as code, and zero-downtime deployment.

#### **Chapter 9: Testing**

Testing microservices is challenging due to distributed architectures. Newman recommends combining unit, service, and end-to-end tests with consumer-driven contracts to ensure reliability.

#### **Chapter 10: From Monitoring to Observability**

Observability goes beyond monitoring by integrating logging, metrics, and tracing to provide a holistic view of system health. Newman emphasizes the importance of real-time alerting and semantic monitoring.

#### **Chapter 11: Security**

Microservices architectures introduce new attack vectors. Newman outlines principles like defense in depth, zero trust, and the principle of least privilege. He also covers authentication, authorization, and securing data in transit and at rest.

#### **Chapter 12: Resiliency**

Resilient systems degrade gracefully under stress. Techniques like retries, circuit breakers, and bulkheads help mitigate failures. Newman introduces chaos engineering as a tool to test and improve resiliency.

#### **Chapter 13: Scaling**

Scaling microservices can follow vertical, horizontal, and functional decomposition strategies. Newman explains caching, autoscaling, and partitioning to handle increased demand.

### **Part III: People**

#### **Chapter 14: User Interfaces**

Microservices affect frontend architecture. Newman discusses patterns like Backend for Frontend (BFF) and micro frontends, which align UI development with service boundaries.

#### **Chapter 15: Organizational Structures**

Organizational alignment is key to microservices success. Newman explores Conway’s Law, stream-aligned teams, and the role of platform teams in supporting microservices.

#### **Chapter 16: The Evolutionary Architect**

Architects in a microservices world must balance guiding principles with enabling team autonomy. Newman highlights the importance of evolutionary architecture and governance.

## **Key Takeaways**

### **Key Takeaway 1: Independent Deployability**

- **Explanation:** Microservices must be independently deployable to enable agility and reduce deployment risks. This requires clear contracts and avoiding shared databases.
- **Personal Reflection:** This takeaway resonates with my experience transitioning from monoliths, where deployments often caused system-wide disruptions.
- **Quote:** _“Independent deployability is key to unlocking the agility promised by microservices”_ (p. 6).

### **Key Takeaway 2: Domain-Driven Design**

- **Explanation:** Aligning service boundaries with business domains reduces cross-service dependencies and simplifies changes.
- **Personal Reflection:** Adopting DDD has helped me improve service cohesion and team focus in my projects.
- **Quote:** _“Domain-driven design helps us find service boundaries that align with business needs”_ (p. 51).

### **Key Takeaway 3: Observability is Essential**

- **Explanation:** Observability tools like distributed tracing and metrics aggregation are critical for diagnosing issues in complex systems.
- **Personal Reflection:** Observability has transformed how I approach troubleshooting and system optimization.
- **Quote:** _“Monitoring tells you when something is wrong; observability helps you understand why”_ (p. 310).

### **Key Takeaway 4: Organizational Alignment Matters**

- **Explanation:** Aligning team structures with microservice boundaries reduces delivery contention and accelerates development.
- **Personal Reflection:** Stream-aligned teams have been a game-changer in reducing bottlenecks and fostering ownership.
- **Quote:** _“Stream-aligned teams are empowered to deliver value quickly and independently”_ (p. 506).

### **Key Takeaway 5: Start Small, Evolve Incrementally**

- **Explanation:** Newman advises starting with a few microservices and scaling incrementally to avoid overwhelming complexity.
- **Personal Reflection:** This approach has helped me balance innovation with operational stability in my projects.
- **Quote:** _“Microservices are an evolution, not a revolution”_ (p. 73).

## **Personal Reflections**

_Building Microservices_ has been transformative in shaping my approach to software architecture. It emphasizes the interplay between technology and organizational dynamics, offering practical strategies to address the challenges of distributed systems. The book reinforced the importance of starting small, prioritizing agility, and fostering collaboration across teams.

## **Conclusion**

Sam Newman’s _Building Microservices_ is a must-read for anyone exploring microservices. Its combination of theoretical insights and practical advice makes it suitable for both beginners and seasoned professionals. This book reminds us that successful microservices require not just technical excellence but also cultural and organizational alignment. Whether you're just starting or refining your implementation, this book will serve as a trusted companion.