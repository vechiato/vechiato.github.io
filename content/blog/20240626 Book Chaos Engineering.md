---
author: "Marcus Vechiato"
title: "Insights from Chaos Engineering: System Resiliency in Practice"
date: "2024-06-26"
thumbnail: ![image](/obsidian/caos_eng.jpg)
publish: true
tags: 
  - chaos engineering
  - sre
  - book
--- 

![image](/obsidian/caos_eng.jpg)

2020 by Casey Rosenthal, Nora Jones

# Chaos Engineering

## Introduction: Birth of Chaos

The book begins with the history of Chaos Engineering, originating from Netflix. Rosenthal and Jones describe the transition from datacenter architecture to cloud infrastructure, highlighting challenges and the necessity of Chaos Engineering for improving system resiliency.

## Summary 
![image](/obsidian/mindmap_chaos_eng.png)
### Part I: Setting the Stage

#### Chapter 1: Encountering Complex Systems

This chapter discusses the inherent complexity of modern software systems and the need for a new approach to handle unexpected failures. The authors argue for proactive failure testing to build robust systems.

#### Chapter 2: Navigating Complex Systems

Here, the authors introduce the Dynamic Safety Model and Economic Pillars of Complexity, providing frameworks to understand and manage complex systems effectively.

#### Chapter 3: Overview of Principles

This chapter defines Chaos Engineering and its core principles. It differentiates between experimentation and testing, and introduces concepts such as building hypotheses around steady-state behavior and varying real-world events.

### Part II: Principles in Action

#### Chapter 4: Slack’s Disasterpiece Theater

This chapter provides a case study from Slack, detailing their approach to Chaos Engineering. The authors describe the goals, anti-goals, and processes involved in their disaster recovery exercises, emphasizing the importance of preparation and continuous improvement.

#### Chapter 5: Google DiRT: Disaster Recovery Testing

Google’s Disaster Recovery Testing (DiRT) program is explored in this chapter. The authors outline the rules of engagement, the scope of tests, and the importance of thorough and regular testing to ensure system resilience.

#### Chapter 6: Microsoft Variation and Prioritization of Experiments

This chapter discusses how Microsoft prioritizes and varies its chaos experiments to uncover unexpected failure modes. The importance of exploring dependencies and scaling experiments is emphasized.

#### Chapter 7: LinkedIn Being Mindful of Members

LinkedIn’s approach to Chaos Engineering focuses on minimizing user impact while conducting large-scale experiments. The chapter details their use of granular targeting and automated experimentation to maintain system integrity.

#### Chapter 8: Capital One Adoption and Evolution of Chaos Engineering

This case study explores how Capital One integrated Chaos Engineering into their CI/CD pipeline. The chapter covers blind resiliency testing, team structure, and the importance of internal evangelism for successful adoption.

### Part III: Human Factors

#### Chapter 9: Creating Foresight

The authors discuss the steps of the Chaos Engineering cycle, from designing experiments to partnering internally with different teams. They emphasize the importance of understanding operating procedures and hypothesizing potential failure points.

#### Chapter 10: Humanistic Chaos

This chapter explores the role of human factors in Chaos Engineering. The authors argue for a socio-technical approach, recognizing that organizations are systems of systems where human behavior and organizational culture play critical roles.

#### Chapter 11: People in the Loop

The chapter discusses the balance between automated systems and human intervention in Chaos Engineering. It highlights the need for functional allocation, where machines handle repetitive tasks and humans manage complex decision-making.

#### Chapter 12: The Experiment Selection Problem (and a Solution)

The authors address the challenge of selecting which experiments to run. They propose methods for random search and observability-driven intuition engineering to optimize experiment selection.

### Part IV: Business Factors

#### Chapter 13: ROI of Chaos Engineering

This chapter explores the return on investment (ROI) of implementing Chaos Engineering. The authors use models like the Kirkpatrick Model to evaluate the impact of Chaos Engineering on organizational learning and performance.

#### Chapter 14: Open Minds, Open Science, and Open Chaos

The importance of an open, collaborative mindset is discussed, with emphasis on open science and open-source contributions to advance Chaos Engineering practices. The chapter highlights the benefits of sharing experiment findings and tools.

#### Chapter 15: Chaos Maturity Model

The Chaos Maturity Model (CMM) is introduced to help organizations assess their maturity in Chaos Engineering practices. The chapter outlines stages of adoption, from initial buy-in to sophisticated, automated experiments.

### Part V: Evolution

#### Chapter 16: Continuous Verification

This chapter discusses continuous verification (CV) systems, with a focus on Netflix’s ChAP (Chaos Automation Platform). The authors explain how CV can be integrated into regular operations to ensure ongoing system resilience.

#### Chapter 17: Let’s Get Cyber-Physical

The authors explore Chaos Engineering beyond traditional software systems, applying principles to cyber-physical systems. They discuss the intersection of functional safety and Chaos Engineering in these complex environments.

#### Chapter 18: HOP Meets Chaos Engineering

This chapter integrates Human and Organizational Performance (HOP) principles with Chaos Engineering. The authors highlight the need for understanding human error and context in building resilient systems.

#### Chapter 19: Chaos Engineering on a Database

The chapter provides a real-world example of applying Chaos Engineering to databases. Techniques like fault injection and automated experimentation are discussed to ensure database robustness and stability.

#### Chapter 20: The Case for Security Chaos Engineering

The authors make a case for integrating Chaos Engineering with security practices. They introduce the concept of Security Chaos Engineering and discuss tools and methods for enhancing security through continuous testing and feedback loops.

## Key Takeaways

1. **Proactive Failure Testing**: Chaos Engineering shifts the paradigm from reactive to proactive failure management, encouraging regular testing of systems under failure conditions to improve resiliency.
2. **Cultural Change**: Successful Chaos Engineering requires a cultural shift where failures are seen as learning opportunities rather than incidents that assign blame.
3. **Automated Experimentation**: Implementing automated systems for fault injection and failure detection can significantly enhance the effectiveness of Chaos Engineering practices.
4. **Real-World Applications**: The book provides concrete examples and case studies demonstrating the practical benefits and applications of Chaos Engineering across various industries.

## Personal Reflections

Reading *Chaos Engineering: System Resiliency in Practice* has been an eye-opener regarding the proactive approaches necessary for maintaining robust and resilient systems in today’s fast-evolving technological landscape. The emphasis on cultural change and learning from failures resonates deeply with modern DevOps practices, highlighting the importance of continuous improvement and resilience.

## Conclusion

*Chaos Engineering: System Resiliency in Practice* by Casey Rosenthal and Nora Jones is an essential read for software engineers and DevOps practitioners looking to enhance system reliability and resilience. By adopting the principles and practices outlined in the book, organizations can better prepare for and mitigate the impacts of unexpected failures, ultimately leading to more stable and reliable systems.
