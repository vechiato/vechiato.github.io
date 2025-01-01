---
author: "Marcus Vechiato"
title: "Insights from Chaos Engineering: System Resiliency in Practice"
date: "2024-06-26"
thumbnail: "/obsidian/caos_eng.jpg"
publish: true
tags: 
  - chaos engineering
  - sre
  - book
--- 
# **Chaos Engineering: System Resiliency in Practice**

I remember multiple occasions when systems were not down but badly impacted during major events. The scramble to restore service and the subsequent post-mortem meeting highlighted our lack of preparedness for unexpected system failures. The book begins with the history of Chaos Engineering, originating from Netflix. Rosenthal and Jones describe the transition from datacenter architecture to cloud infrastructure, highlighting challenges and the necessity of Chaos Engineering for improving system resiliency. This book delves into the principles and practices of Chaos Engineering, a methodology designed to improve system reliability by intentionally introducing failures. I chose this book to understand how we can better prepare for the unexpected and ensure our systems can withstand and recover from disruptions.

![image](/obsidian/book_caos_eng.jpg)
2020 by Casey Rosenthal, Nora Jones

## **Summary**
![image](/obsidian/mindmap_chaos_eng.png)
### **Part I: Setting the Stage**

#### **Chapter 1: Encountering Complex Systems**
This chapter explores the inherent unpredictability and nonlinearity of complex systems. It begins by defining complex systems and their characteristics, such as the inability for one person to hold all the parts in their head, making traditional safety exploration methods inadequate. The chapter includes examples illustrating how complexity can lead to unexpected system behaviors, like the mismatch between business logic and application logic causing system failures.

#### **Chapter 2: Navigating Complex Systems**
This chapter introduces models like the Dynamic Safety Model and the Economic Pillars of Complexity Model, providing frameworks for understanding and managing complexity. It emphasises the systemic perspective required for Chaos Engineering, focusing on safety, workload, and the economic aspects of software systems.

#### **Chapter 3: Overview of Principles**
Building on the exploration of complex systems, this chapter frames the principles and definition of Chaos Engineering. It explains what Chaos Engineering is, differentiating it from testing, and outlines advanced principles such as building hypotheses around steady-state behavior, varying real-world events, running experiments in production, automating experiments to run continuously, and minimizing blast radius.

### **Part II: Principles in Action**

#### **Chapter 4: Slack’s Disasterpiece Theater**
The chapter details Slack’s approach to Chaos Engineering through "Disasterpiece Theater," a process designed to retrofit chaos experiments into their existing infrastructure. It discusses design patterns for older and newer systems, the goals and anti-goals of their experiments, and the evolution of their process, including getting management buy-in and the results achieved.

#### **Chapter 5: Google DiRT: Disaster Recovery Testing**
Google’s Disaster Recovery Testing (DiRT) program is highlighted here, showcasing their comprehensive approach to simulating disaster scenarios. The chapter outlines the rules of engagement, scope of tests, and how results are gathered and analyzed, demonstrating the importance of preparing for large-scale failures.

#### **Chapter 6: Microsoft Variation and Prioritization of Experiments**
This chapter examines how Microsoft categorizes and prioritizes chaos experiments. It covers the unexpected complications that arise in seemingly simple systems and the importance of varying failures and exploring dependencies to enhance system resilience.

#### **Chapter 7: LinkedIn Being Mindful of Members**
LinkedIn’s approach to Chaos Engineering focuses on protecting user experience. The chapter discusses granular targeting of experiments, experimenting at scale safely, and tools like LiX and browser extensions that facilitate rapid and automated experimentation.

#### **Chapter 8: Capital One Adoption and Evolution of Chaos Engineering**
This case study explores Capital One’s journey from blind resiliency testing to full-fledged Chaos Engineering. It highlights the transition to chaos experiments in CI/CD pipelines, team structures, tooling, and the cultural shift necessary to embrace Chaos Engineering.

### **Part III: Human Factors**

#### **Chapter 9: Creating Foresight**
This chapter connects Chaos Engineering to resilience, outlining the steps of the Chaos Engineering cycle, from designing experiments to partnering effectively within organisations. It stresses the importance of understanding operating procedures and discussing the scope and hypotheses of experiments.

#### **Chapter 10: Humanistic Chaos**
The focus here is on the human aspects of Chaos Engineering. It discusses how humans interact with complex systems, the importance of organizational context, and how to build adaptive capacity within teams. Case studies illustrate how communication and leadership play crucial roles in successful chaos experiments.

#### **Chapter 11: People in the Loop**
This chapter delves into the involvement of people in chaos experiments. It covers the why, how, and when of experiments, emphasizing the roles that humans and machines play in achieving resilient systems.

#### **Chapter 12: The Experiment Selection Problem (and a Solution)**
The chapter addresses the challenge of selecting the right chaos experiments. It introduces concepts like random search and observability for intuition engineering, providing strategies to choose experiments that yield the most valuable insights.

### **Part IV: Business Factors**

#### **Chapter 13: ROI of Chaos Engineering**
The return on investment (ROI) of Chaos Engineering is discussed here, using models like the Kirkpatrick Model to measure the impact of chaos experiments. The chapter provides examples of how Chaos Engineering can lead to tangible business benefits, such as reduced incident rates and improved system reliability.

#### **Chapter 14: Open Minds, Open Science, and Open Chaos**
This chapter advocates for open science and open source in Chaos Engineering. It explores collaborative mindsets, the benefits of sharing experiment findings, and how open practices can drive innovation and improve resilience across industries.

#### **Chapter 15: Chaos Maturity Model**
The Chaos Maturity Model provides a framework for assessing and advancing an organization’s Chaos Engineering practices. It covers adoption stages, organizational participation, prerequisites, obstacles, and how to achieve higher sophistication in chaos experiments.

### **Part V: Evolution**

#### **Chapter 16: Continuous Verification**
This chapter explores the concept of continuous verification (CV) and its application in Chaos Engineering. It discusses the origins of CV, types of CV systems, and real-world implementations like Netflix’s ChAP (Chaos Automation Platform).

#### **Chapter 17: Let’s Get Cyber-Physical**
The rise of cyber-physical systems and their intersection with Chaos Engineering are covered here. The chapter discusses the challenges and opportunities of applying chaos experiments to systems that blend digital and physical components.

#### **Chapter 18: HOP Meets Chaos Engineering**
Human and Organizational Performance (HOP) principles are integrated with Chaos Engineering in this chapter. It covers key HOP principles and how they align with chaos experiments to enhance system resilience and safety.

#### **Chapter 19: Chaos Engineering on a Database**
This chapter focuses on applying Chaos Engineering to databases, a critical component of many systems. It discusses fault injection, detecting failures, automating chaos experiments, and tools like Schrodinger for database chaos testing.

#### **Chapter 20: The Case for Security Chaos Engineering**
The application of Chaos Engineering to security is explored here. The chapter highlights the benefits of security chaos experiments, problems with traditional security methods, and tools like ChaoSlingr for security testing.

## **Key Takeaways**

### Key Takeaway 1: Embrace Failure as Learning
- Chaos Engineering promotes the idea that failures are opportunities to learn and improve system resilience. By intentionally introducing failures, organizations can identify and address weaknesses before they cause major disruptions.
- This perspective can transform how companies approach system design and maintenance, shifting from a reactive to a proactive stance. It encourages continuous improvement and adaptability.
- Quote: “If you’re not failing, you’re not learning.” – Casey Rosenthal and Nora Jones (Chapter 10, Page 150)

### Key Takeaway 2: Build a Hypothesis Around Steady-State Behavior
- Successful chaos experiments are built on hypotheses about what normal system behavior should look like. By understanding the steady state, engineers can better design experiments to test system limits and responses to failures.
- This methodical approach ensures that chaos experiments are purposeful and yield actionable insights, rather than causing unnecessary disruption.
- Quote: “Build a hypothesis around steady-state behavior.” – Casey Rosenthal and Nora Jones (Chapter 3, Page 30)

### Key Takeaway 3: Automate and Continuously Run Experiments
- Automation is crucial for the continuous integration of chaos experiments into the development cycle. It allows for regular testing and validation of system resilience without manual intervention.
- Automation makes Chaos Engineering scalable and sustainable, ensuring that resilience testing keeps pace with system changes and growth.
- Quote: “Automate experiments to run continuously.” – Casey Rosenthal and Nora Jones (Chapter 3, Page 32)

### Key Takeaway 4: Focus on Human Factors
- Human factors play a significant role in the success of chaos experiments. Understanding organisational context, communication, and leadership dynamics is essential for implementing effective Chaos Engineering practices.
- Acknowledging the human element can lead to more thoughtful and comprehensive approaches to system resilience, ensuring that teams are prepared and aligned.
- Quote: “Organizations are a system of systems.” – Casey Rosenthal and Nora Jones (Chapter 10, Page 134)

### Key Takeaway 5: Measure ROI and Advocate for Open Practices
- Demonstrating the ROI of Chaos Engineering can help gain organisational buy-in and support. Additionally, adopting open science and open source practices can drive innovation and collaboration across industries.
- Highlighting the tangible benefits of Chaos Engineering and fostering an open culture can lead to broader adoption and continuous improvement.

## **Personal Reflections**
Reading "Chaos Engineering: System Resiliency in Practice" has reshaped my understanding of system reliability and resilience. It has provided me with actionable strategies to anticipate and mitigate system failures proactively. Implementing these principles can lead to more robust systems and a culture that values continuous learning and improvement. This book has made me rethink how we approach system design and failure management, highlighting the importance of resilience in today’s complex, interconnected digital landscape.

## **Conclusion**
"Chaos Engineering: System Resiliency in Practice" is an essential read for anyone involved in system architecture, operations, or reliability engineering. Rosenthal and Jones offer a comprehensive guide to understanding and implementing Chaos Engineering principles, backed by real-world examples from industry leaders.