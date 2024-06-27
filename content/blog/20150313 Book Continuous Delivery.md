---
author: "Marcus Vechiato"
title: "Insights from Continuous Delivery"
date: "2015-03-13"
publish: true
tags: 
  - devops
  - book
--- 

![image](/obsidian/continuous_delivery.jpg)

[Continuous Delivery: Reliable Software Releases through Build, Test, and Deployment Automation](https://www.amazon.co.uk/dp/0321601912)

# Continuous Delivery, 2011

## Introduction

Continuous Delivery (CD) has revolutionised the way software is developed and deployed, aiming to make software releases a reliable, predictable process. In "Continuous Delivery: Reliable Software Releases through Build, Test, and Deployment Automation," authors David Farley and Jez Humble provide a comprehensive guide to implementing CD practices effectively. This book is part of the Addison-Wesley Signature Series and offers detailed insights into achieving efficient, low-risk software deployments.

## Summary
![image](/obsidian/mindmap_continuos_delivery.png)
### Part I: Foundations

#### Chapter 1: The Problem of Delivering Software

Farley and Humble begin by discussing common antipatterns in software development and the challenges associated with traditional software delivery methods. They set the stage by introducing the principles of CD aimed at achieving regular, repeatable, low-risk releases.

#### Chapter 2: Configuration Management

This chapter covers the importance of managing everything required to build, deploy, test, and release applications. It emphasises the need for effective configuration management of source code, build scripts, environment settings, and application configurations.

#### Chapter 3: Continuous Integration

Continuous Integration (CI) is a key practice where automated tests are run against every code change to ensure the software remains in a working state. The chapter outlines the benefits and implementation strategies for CI.

#### Chapter 4: Implementing a Testing Strategy

A comprehensive testing strategy is vital for CD. The authors discuss various types of manual and automated tests, their roles, and how to implement an effective testing strategy that supports continuous integration and delivery.

### Part II: The Deployment Pipeline

#### Chapter 5: Anatomy of the Deployment Pipeline

The deployment pipeline is the core concept of the book. It describes an automated process that takes every change from check-in to release. This chapter explains how to implement deployment pipelines at both team and organisational levels.

#### Chapter 6: Build and Deployment Scripting

Automated build and deployment scripts are essential for a successful CD process. The authors discuss scripting technologies and best practices for creating reliable, repeatable build and deployment processes.

#### Chapter 7: The Commit Stage

The commit stage involves a set of automated processes triggered as soon as a change is introduced into the application. This chapter provides guidance on creating a fast and effective commit test suite to provide immediate feedback.

#### Chapter 8: Automated Acceptance Testing

Automated acceptance tests validate the functionality of the application against its requirements. This chapter discusses how to create and maintain acceptance test suites and integrate them into the deployment pipeline.

#### Chapter 9: Testing Nonfunctional Requirements

Nonfunctional requirements such as performance, security, and scalability are crucial for the success of any software system. This chapter explains how to define, measure, and test these requirements within the CD process.

#### Chapter 10: Deploying and Releasing Applications

This chapter covers strategies for creating release plans, deploying applications, and promoting builds through various stages of the deployment pipeline. It also discusses continuous deployment, rollbacks, and zero-downtime releases.

## Key Takeaways

1. **Continuous Integration:** Regularly integrating code changes and running automated tests to ensure the software remains in a deployable state.
2. **Automated Testing:** Implementing a comprehensive testing strategy that includes unit tests, integration tests, and acceptance tests to catch issues early.
3. **Deployment Pipeline:** Establishing an automated process to take code changes from development to production reliably and efficiently.
4. **Nonfunctional Testing:** Ensuring performance, security, and scalability requirements are met through targeted testing strategies.

## Conclusion

"Continuous Delivery: Reliable Software Releases through Build, Test, and Deployment Automation" by David Farley and Jez Humble is an essential read for software professionals aiming to implement continuous delivery practices. The book provides a detailed roadmap for achieving reliable software releases through automation, ensuring projects are delivered on time with high quality.

