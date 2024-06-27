---
author: "Marcus Vechiato"
title: "Insights from Platform Engineering on Kubernetes"
date: "2024-06-09"
publish: true
thumbnail: book_platform_engineering_kubernetes.jpg
tags: 
  - k8s
  - platform engineering
  - book
--- 

![image](/obsidian/book_platform_engineering_kubernetes.jpg)
2022 by Mauricio Salatino

[Platform Engineering on Kubernetes](https://www.amazon.co.uk/dp/1617299324)

# Platform Engineering on Kubernetes 

## Introduction

"Platform Engineering on Kubernetes" by Mauricio Salatino provides a comprehensive guide to leveraging Kubernetes for platform engineering. This book explores the intricacies of building and maintaining platforms on top of Kubernetes, focusing on the needs of development teams and the challenges of cloud-native environments.

## Summary
![image](/obsidian/mindmap_platform_engineering_k8s.png)

### Chapter 1: The Rise of Platforms on Top of Kubernetes

This chapter introduces the concept of platforms and their significance. It explains why platforms are essential for organisations and discusses the advantages of building platforms on top of Kubernetes. The chapter also outlines the challenges associated with platform engineering and the need for a "walking skeleton" to demonstrate platform concepts.

### Chapter 2: Cloud-Native Application Challenges

Salatino delves into the challenges of running cloud-native applications on Kubernetes. He covers topics such as choosing the right Kubernetes environment, deploying applications, and troubleshooting common issues. The chapter provides practical advice for managing downtime, ensuring resilience, and handling application state and security.

### Chapter 3: Service Pipelines

The focus of this chapter is on building service pipelines for continuous delivery of cloud-native applications. Salatino introduces key tools like Tekton and Dagger, and discusses the structure and requirements of effective service pipelines. He provides examples and practical insights on implementing service pipelines in real-world scenarios.

### Chapter 4: Environment Pipelines

This chapter explores the concept of environment pipelines and their role in deploying applications across different environments. Salatino explains GitOps and its relation to environment pipelines, using Argo CD as a case study. He discusses the steps involved in creating and managing environment pipelines.

### Chapter 5: Multi-Cloud (App) Infrastructure

Salatino addresses the challenges of managing infrastructure in a multi-cloud environment. He introduces Crossplane as a solution for declarative infrastructure management and provides examples of how to integrate services with newly provisioned infrastructure. The chapter highlights the importance of managing infrastructure consistently across multiple cloud providers.

### Chapter 6: Building a Platform on Top of Kubernetes

This chapter focuses on the practical steps of building a platform on Kubernetes. Salatino discusses platform architecture, the importance of APIs, and the challenges of managing multiple clusters and ensuring isolation and multi-tenancy. He provides a detailed guide on creating a development environment platform using Kubernetes tools.

### Chapter 7: Platform Capabilities I: Shared Application Concerns

Salatino explores common application concerns such as service-to-service interaction, state management, and asynchronous messaging. He introduces tools like Dapr and OpenFeature to address these concerns and demonstrates how to integrate these tools into the platform.

### Chapter 8: Platform Capabilities II: Enabling Teams to Experiment

This chapter covers advanced release strategies such as canary releases, blue/green deployments, and A/B testing. Salatino discusses the use of Knative Serving and Argo Rollouts to implement these strategies, providing examples and practical tips for managing traffic and ensuring smooth rollouts.

### Chapter 9: Measuring Your Platforms

Salatino emphasises the importance of measuring platform performance. He introduces DORA metrics and explains how to use CloudEvents and CDEvents for metrics collection. The chapter provides a detailed guide on building a metrics collection pipeline and using tools like Keptn Lifecycle Toolkit for effective measurement.

## Key Takeaways

1. **Platform Engineering:** Building and maintaining platforms on Kubernetes requires a deep understanding of both the technical and organisational aspects of platform engineering.
2. **Continuous Delivery:** Service pipelines and environment pipelines are crucial for continuous delivery of cloud-native applications.
3. **Multi-Cloud Management:** Managing infrastructure across multiple cloud providers involves significant challenges that can be addressed with tools like Crossplane.
4. **Advanced Release Strategies:** Implementing advanced release strategies can help teams experiment and innovate while maintaining stability.
5. **Performance Measurement:** Effective measurement of platform performance is essential for continuous improvement and optimisation.

## Personal Reflections

Reading "Platform Engineering on Kubernetes" has provided valuable insights into the complexities and best practices of building platforms on Kubernetes. Mauricio Salatino's practical approach and detailed examples make the concepts accessible and actionable. The emphasis on continuous improvement and adapting to evolving technologies resonates deeply with my experiences in the cloud-native space.

## Conclusion

"Platform Engineering on Kubernetes" by Mauricio Salatino is an essential resource for anyone involved in building and maintaining platforms on Kubernetes. The book offers a comprehensive guide to the tools, practices, and strategies needed to succeed in platform engineering. By following the principles outlined in this book, organisations can enhance their software delivery capabilities and achieve greater efficiency and resilience in the cloud-native era.

![](https://www.youtube.com/watch?v=Wp8huqq_qgI)

