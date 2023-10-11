---
title: "Book - Establishing SRE Foundations"
author: "Marcus Vechiato" 
date: "2023-07-01"
publish: true
---

related: [image](/obsidian/SRE]] [[Vladyslav Ukis)

**Establishing SRE Foundations**

![Establishing SRE Foundations: A Step-by-Step Guide to Introducing Site Reliability Engineering in Software Delivery Organizations](https://m.media-amazon.com/images/I/51IM4u0325L._SY342_.jpg)

# Part I - Foundations
## Chapter 1 - Introduction to SRE
### Why SRE?

DevOps is an overarching philosophy for bringing product development and product operations together. SRE is a concrete opinionated implementation of the DevOps philosophy. 
#### Itil

Wikipedia defines ITIL as "A set pof detailed practices for IT service management that focus on aligning IT services with the needs of the business"
##### Itil 4 describes Seven guiding principles:
1. Focus on value
2. Start where you are
3. Progress iteratively with feedback
4. Collaborate and promote visibility
5. Think and work holistically
6. Keep it simple and practical
7. Optimize and automate
##### Four dimensions:
1. Organizations and people
2. Information and Technology
3. Partners and suppliers
4. Value streams and processes
#### Cobit

Acording to wikipedia COBIT is a framework created by ISACA, and COBIT stands for: Control Objectives for Information and related Technologies. It defines a set of generic processes for the management of IT.
A core tenet of COBIT is to align business goals with IT goals. 
- Five COBIT principles:
	1. Meeting stakeholder needs
	2. Covering the enterprise end to end
	3. Applying a single integrated framework
	4. Enabling a holistic approach
	5. Separating governance from management
- COBIT 6 governance system principles:
	1. Provide stakeholder value
	2. Holistic approach
	3. Dynamic governance system
	4. Governance distinct from management
	5. Tailored to enterprise needs
	6. End-to-end governance system
#### Modeling

Modeling can be seen in the software security discipline. In security. modeling is applied to find threats.  Threat modeling is a risk-based approach for secure system design. 
Modeling as a technique can be applied to find operational vulnerabilities, system architecture, implementation, and deployment can be analysed to find weak spots that would prevent the system from executing well in production. Based on these week spots mitigations can be defined and mitigated.
#### DevOps

- Five pillars of success:
	1. Reduce organizational silos
	2. Accept failure as normal
	3. Implement gradual changes
	4. Leverage tooling and automation
	5. Measure everything

The DevOps maturity level of an enterprise can be assessed using the CALMS framework. CALMS stands for Culture, Automation, Lean, Measurement and Sharing. The framework was coined by Jezz Humble. CALMS is also sometimes used to communicate and negotiate differences between DevOps and ITIL. 
- CALMS:
	- Culture In terms of culture, DevOps requires shared responsibility for tearing down silos between Dev and Ops. 
	- Automation in DevOps refers to technical practices around Continuous Delivery automating as much as possible
	- Lean refers to the principles of waste elimination and value stream optimization.
	- Measure, the data is systematically used to understand and drive improvements.
	- Sharing refers to shared goals, openness and information sharing between dev and ops teams
#### SRE

Originated within Google in 2004 ```SRE is a discipline that incorporates aspects of software engineering and applies them to infrastructure and software problems. The main goals are to create scalable and higly reliable software systems.``` According to Benjamin Treynor Sloss, the founder of  Google SRE team: ```SRE is what happens when a software engineer is tasked with what used to be called operations.```

- SRE Principles: 
	1. Operations is a software problem
	2. Manage by SLOs
	3. Work to minimize toil
	4. Automate is years job away
	5. Move fast by reducing the cost of failure: reduce the MTTR (repair) for common faults
	6. Share ownership with developers
	7. Use the same tooling, regardless of function or job title

- Three additional principles for SRE:
	- SRE needs SLOS with consequences
	- SRE must have time to make tomorrow better than today
	- SRE teams have the ability to regulate their workload

The SRE principles are pretty opinionated and often prescribe what needs to be done to achieve reliable operations. 
#### Comparison



## Chapter 2 - The Challenge

## Chapter 3 - SRE Basic Concepts

## Chapter 4 - Assessing the Status Quo

# Part II - Running the Transformation

## Chapter 5 - Achieving the Organizational Buy-in
## Chapter 6 - Laying Down the Foundations
## Chapter 7 - Reacting to Alerts on SLO Breachs

## Chapter 8 - Implementing Alert Dispatching

## Chapter 9 - Implementing Incident Response

## Chapter 10 - Setting Up an Error Budget Policy
## Chapter 11 - Enabling Error Budget-Based Decision-Making

## Chapter 12 - Implementing an Organizational Structure

# Part III - Measuring and Sustaining the Transfprmation

## Chapter 13 - Measuring SRE Transformation
## Chapter 14 - Sustaining the SRE Movement
## Chapter 15 - The Road Ahead


