---
author: "Marcus Vechiato"
title: "Insights from Learning Helm: Managing Apps on Kubernetes"
date: "2023-04-21"
thumbnail: "/obsidian/learning_helm.jpg"
publish: true
tags:
  - book
  - helm
  - k8s
--- 

# **Learning Helm: Managing Apps on Kubernetes**

I remember the first time I dived into Kubernetes; it felt like stepping into a new world. There were so many moving parts, and I quickly realised the need for effective tools to manage it all. This is where "Learning Helm" by Matt Butcher, Matt Farina, and Josh Dolitsky comes in. The book serves as a comprehensive guide to using Helm, the package manager for Kubernetes. I chose helm because it promised to simplify the complexity of Kubernetes management, and it certainly delivered. Readers can expect to gain a solid understanding of Helm's capabilities, its architecture, and practical ways to manage Kubernetes applications efficiently. 

![image](/obsidian/learning_helm.jpg)
2021 by Matt Butcher, Matt Farina & Josh Dolitsky

## **Summary**
![image](/obsidian/mindmap_learning_helm.png)
#### **Chapter 1: Introducing Helm**
The book kicks off with a detailed introduction to the cloud native ecosystem, highlighting Kubernetes as a key technology. It explains the concept of package management and Helm's role within this ecosystem. The chapter also delves into Helm’s architecture, explaining the core components such as charts, templates, and releases. One section that particularly stood out to me discussed Helm’s goals, which aim to simplify Kubernetes usage, provide robust package management, and emphasise security and configurability..

#### **Chapter 2: Using Helm**
This chapter is a practical guide on getting started with Helm. It covers installation procedures, including how to install prebuilt binaries and build from source. It also explains how to configure the Helm client, work with Kubernetes clusters, and manage packages using Helm. The chapter's step-by-step approach makes it easy to follow, even for beginners.

#### **Chapter 3: Beyond the Basics with Helm**
This chapter explores advanced Helm features such as templating and dry runs. It explains how to use the `--dry-run` flag and the `helm template` command to preview changes before applying them. The chapter also covers learning about release records, listing releases, and performing rollbacks. It provides a deep dive into install and upgrade strategies, which are crucial for maintaining application stability.

#### **Chapter 4: Building a Chart**
Building on the basics, this chapter guides readers through creating their own Helm charts. It covers the chart creation command, the structure of the `Chart.yaml` file, and how to modify templates. It also explains how to use the values file, container images, and exposing services. This chapter is particularly valuable for those looking to package their applications for Kubernetes deployment.

#### **Chapter 5: Developing Templates**
Focusing on template development, this chapter dives into the template syntax, including actions, methods, and functions. It explains how to query Kubernetes resources in charts and use control structures like `if/else` and loops. This chapter is essential for creating dynamic and reusable Helm charts.

#### **Chapter 6: Advanced Chart Features**
This chapter covers advanced chart features such as chart dependencies, conditional flags, and importing values from child to parent charts. It also introduces library charts, hooks, and adding tests to charts. These features enhance the functionality and reliability of Helm charts, making them more robust for production use.

#### **Chapter 7: Chart Repositories**
Chart repositories are essential for sharing and distributing Helm charts. This chapter explains how to set up and use chart repositories, including generating and managing repository indexes. It also covers securing a chart repository and using third-party tools to enhance repository functionality.

#### **Chapter 8: Helm Plugins and Starters**
The final chapter explores Helm plugins and starters. It explains how to install and use third-party plugins, build custom plugins, and create starter templates. This chapter highlights the extensibility of Helm and how it can be tailored to specific needs through plugins and starters.

### **Key Takeaways**

#### **Key Takeaway 1:**
- **Explanation:** Helm simplifies the deployment and management of Kubernetes applications by packaging them into charts.
- **Personal Reflection:** This feature is crucial as it abstracts the complexity of Kubernetes configurations, making it accessible even for those who are not deeply versed in Kubernetes.

#### **Key Takeaway 2:**
- **Explanation:** Helm promotes reusability and configurability through its chart system, allowing users to deploy the same applications with different configurations easily.
- **Personal Reflection:** The ability to reuse and configure charts for different environments (development, staging, production) enhances operational efficiency and consistency.

#### **Key Takeaway 3:**
- **Explanation:** Helm supports the lifecycle management of applications, enabling upgrades, rollbacks, and management of application states.
- **Personal Reflection:** Lifecycle management is essential for maintaining application stability and continuity, especially in dynamic environments where changes are frequent.

### **Personal Reflections**
"Learning Helm" can significantly improve the approach to manage Kubernetes applications. The insights gained have not only streamlined my workflow but also enhanced my understanding of Kubernetes' broader ecosystem. The book has improved my perspective on application deployment, emphasising the importance of package management and automation in maintaining robust and scalable systems. It’s a valuable resource for anyone facing the challenges of managing complex Kubernetes environments.

### **Conclusion**
Overall, "Learning Helm: Managing Apps on Kubernetes" is a must-read for anyone looking to master Kubernetes package management. The book’s clear explanations, practical guides, and insightful reflections make it a standout resource. Whether you’re new to Kubernetes or looking to enhance your existing skills, this book provides the tools and knowledge to navigate and excel in the cloud native ecosystem. It’s a transformative read that offers both foundational understanding and advanced techniques to manage Kubernetes with confidence.


