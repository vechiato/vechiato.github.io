---
author: "Marcus Vechiato"
title: "Insights from Crossplane: The Cloud Native Control Plane"
date: "2024-07-02"
publish: true
thumbnail: "/obsidian/book_crossplane.png"
tags: 
  - k8s 
  - crossplane
  - book
--- 
![image](/obsidian/book_crossplane.png)
2024 by Viktor Farcic 

## Crossplane: The Cloud Native Control Plane

### Overview

As a DevOps enthusiast, I've always been fascinated by the potential of cloud-native technologies to streamline and enhance our workflows. Recently, I picked up "Crossplane: The Cloud Native Control Plane" by Viktor Farcic, and it has been an enlightening journey. This book delves into the intricacies of Crossplane, a project that democratizes the powerful capabilities traditionally reserved for major cloud providers. By abstracting away complexity and allowing for custom control planes, Crossplane stands out as a transformative tool for modern infrastructure management. I chose this book to deepen my understanding of how Crossplane can help create a seamless, scalable, and efficient cloud infrastructure tailored to specific organizational needs.

### Summary
![image](/obsidian/mindmap_crossplane.png)
#### Chapter 1: Introduction

In this chapter, Farcic introduces the potential of Crossplane to create custom control planes that provide a similar experience to using major public cloud providers like AWS, Google Cloud, and Azure. He emphasizes the hands-on learning approach of the book, encouraging readers to dive directly into creating and managing resources using Crossplane. One notable section describes a simple YAML manifest that can set up a production-ready Kubernetes cluster, a managed PostgreSQL database, and a backend application, showcasing Crossplane's powerful abstraction capabilities.

"Imagine if you could create, for people in your company, a platform that would provide them with the same experience they have when working with AWS, Google Cloud, Azure, or any other public Cloud provider." – Viktor Farcic (Page 1)

##### A Glimpse Into the Future

This chapter gives readers a preview of what they can expect to achieve by the end of the book. Farcic describes various capabilities that Crossplane can provide, such as creating and managing Kubernetes clusters, databases, and applications through simple declarative manifests. The chapter emphasizes the ease and efficiency of using Crossplane to manage complex infrastructure.

#### Chapter 2: Providers and Managed Resources

Farcic explores the concept of providers, which extend Crossplane's capabilities through custom resource definitions (CRDs) and controllers. He explains how providers, such as AWS, Google Cloud, and Azure, add numerous CRDs to Kubernetes, enabling the management of various cloud resources. The chapter also introduces the Upbound marketplace, a repository for discovering and installing providers.

"Providers are a way to extend Crossplane capabilities through custom resource definitions (CRDs) and controllers." – Viktor Farcic (Page 18)

"A Crossplane Managed Resource represents a resource managed by Crossplane. That resource can be anything from an AWS EC2 instance to a Google Cloud Run instance." – Viktor Farcic (Page 25)

##### Continuous Drift-Detection and Reconciliation

Farcic explains the importance of continuous drift detection and reconciliation in maintaining the desired state of resources. He illustrates how Crossplane ensures that managed resources stay in sync with their defined configurations, correcting any deviations automatically.

"Crossplane takes those concepts to the next level or, to be more precise, it extends them to… everything. No matter which type of resources we are managing with Crossplane, it will ensure that their state always matches the desired state." – Viktor Farcic (Page 35)

#### Chapter 3: Compositions

In this chapter, Farcic explains how to use Compositions to define complex resource configurations that can be reused across different environments. This approach allows for greater flexibility and consistency in managing cloud resources.

"Compositions allow us to define reusable configurations that can be applied to different environments, ensuring consistency and reducing complexity." – Viktor Farcic (Page 41)

#### Chapter 4: Configuration Packages

Farcic introduces Configuration Packages, which bundle together multiple resources and configurations into a single, reusable package. This chapter provides a step-by-step guide to creating and managing Configuration Packages.

"Configuration Packages enable us to bundle multiple resources and configurations into a single package, making it easier to manage and deploy complex infrastructure." – Viktor Farcic (Page 88)

#### Chapter 5: Composition Functions

This chapter delves into Composition Functions, which extend the functionality of Compositions by allowing for more complex logic and transformations. Farcic provides examples of how to use these functions to achieve advanced resource configurations.

"Composition Functions allow us to extend the capabilities of Compositions with more complex logic and transformations." – Viktor Farcic (Page 104)

### Key Takeaways

#### Key Takeaway 1: Simplified Cloud Resource Management

- **Explanation**: Crossplane simplifies the management of cloud resources by abstracting the complexities of various cloud provider APIs into Kubernetes-native CRDs. This allows for consistent and scalable infrastructure management across different environments.
- **Personal Reflection**: This abstraction layer is crucial for organizations looking to maintain a hybrid or multi-cloud strategy, as it reduces the learning curve and operational overhead associated with managing multiple cloud platforms.
- **Quote**: “Crossplane enables us to create control planes based on the same principles public cloud providers have.” – Viktor Farcic

#### Key Takeaway 2: Hands-On Learning Approach

- **Explanation**: Farcic’s book emphasizes a hands-on approach, encouraging readers to learn by doing. This method helps solidify concepts and ensures that readers can apply what they learn in real-world scenarios.
- **Personal Reflection**: This approach resonates with me as it aligns with how I prefer to learn new technologies. By actively engaging with the material, I was able to better understand and retain the information.
- **Quote**: “I learn by doing. I learn by having my hands on the keyboard at all times.” – Viktor Farcic

#### Key Takeaway 3: Extensible and Modular Design

- **Explanation**: Crossplane’s extensible architecture, through providers, configurations, and functions, allows for a highly modular and customizable cloud control plane. This flexibility is key to adapting to diverse and evolving infrastructure needs.
- **Personal Reflection**: The modularity of Crossplane makes it a powerful tool for DevOps teams, allowing them to build tailored solutions that can evolve with their organization’s requirements.
- **Quote**: “Providers, together with configurations and functions, are a type of package that extends Crossplane’s capabilities.” – Viktor Farcic

### Personal Reflections

"Crossplane: The Cloud Native Control Plane" has significantly broadened my perspective on cloud resource management. The book’s practical, hands-on approach allowed me to grasp the potential of Crossplane in creating custom control planes. It has inspired me to consider how my organization can leverage Crossplane to streamline our infrastructure management, reduce complexity, and enhance scalability. This book is a valuable resource for anyone looking to explore the possibilities of cloud-native technologies and implement effective solutions tailored to their unique needs.

### Conclusion

Overall, "Crossplane: The Cloud Native Control Plane" by Viktor Farcic is a good source for DevOps professionals and cloud enthusiasts. The book’s practical approach, combined with its in-depth exploration of Crossplane’s capabilities, makes it an great guide for managing cloud infrastructure. Farcic’s insights and detailed explanations provide readers with the knowledge and confidence to implement Crossplane in their own environments. If you’re looking to simplify and enhance your cloud resource management, this book offers the tools and inspiration you need to get started. 

