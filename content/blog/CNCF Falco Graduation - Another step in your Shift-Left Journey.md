---
author: "Marcus Vechiato"
title: "CNCF Falco Graduation - Another step in your Shift-Left Journey"
date: "2024-03-07"
publish: true
--- 

# Falco Enhances Container Security with Real-time Threat Detection

In today's digital landscape, containerised applications have become the cornerstone of modern software development, offering scalability, portability, and efficiency. However, with the proliferation of containers, security concerns have also escalated. Ensuring the security of containerized environments is paramount to safeguarding sensitive data and maintaining the integrity of applications. To address these challenges, the Cloud Native Computing Foundation (CNCF) has introduced Falco, an open-source runtime security project designed to provide real-time threat detection for containers and Kubernetes environments.

![](https://falco.org/img/falco-schema.svg)
# Understanding CNCF Falco

Falco, initially developed by Sysdig in 2016, was accepted as a CNCF Sandbox project in October 2018, graduated to CNCF Incubating status in October 2020, just [graduated]( [https://www.cncf.io/announcements/2024/02/29/cloud-native-computing-foundation-announces-falco-graduation/](https://www.cncf.io/announcements/2024/02/29/cloud-native-computing-foundation-announces-falco-graduation/)) in February 2024. It leverages the power of [eBPF](https://ebpf.io/) (extended Berkeley Packet Filter) technology to monitor system calls and network activity, enabling it to detect and alert on suspicious behaviour within containerised environments.

## Integrating Security Early in the Development Lifecycle

Shift-Left is a security philosophy that emphasises integrating security practices and measures earlier in the software development lifecycle, ideally starting from the initial stages of design and development. This proactive approach aims to identify and mitigate security vulnerabilities and threats as early as possible, reducing the likelihood of costly security incidents downstream.

## Falco and Shift-Left Security

1. **Preventative Measures:** Falco aligns with the Shift-Left approach by providing real-time threat detection and policy enforcement capabilities within containerised environments. By continuously monitoring system calls and container activity, Falco can identify security issues at runtime, allowing developers to address vulnerabilities before they escalate into full-blown security incidents.
2. **Policy Enforcement**: Falco enables organisations to define and monitor security policies early in the development lifecycle. By integrating Falco into the CI/CD pipeline, developers can receive immediate feedback on security violations, enabling them to remediate issues before deploying applications into production.
3. **Automated Response**: Falco's integration with Kubernetes allows for automated response actions, such as pod eviction or container isolation, in response to security threats. This automated approach aligns with the Shift-Left philosophy of minimising manual intervention and accelerating the resolution of security issues.
4. **Visibility and Feedback Loop**: Falco provides rich visibility into containerised environments, generating detailed audit logs and alerting developers to suspicious activities in real-time. This feedback loop enables developers to iteratively improve the security posture of their applications, reinforcing the Shift-Left mindset of continuous improvement and risk mitigation.
5. **Collaborative Approach:** Falco fosters collaboration between development, operations, and security teams by providing a common platform for monitoring and responding to security threats. By breaking down silos and promoting cross-functional communication, Falco enables organisations to adopt a holistic Shift-Left approach to security.

##  What does Falco do?

Falco uses syscalls to monitor a system's activity, by:
- Parsing the Linux syscalls from the kernel at runtime
- Asserting the stream against a powerful rules engine
- Alerting when a rule is violated
## What does Falco check for?

Falco ships with a default set of rules that check the kernel for unusual behavior such as:

- Privilege escalation using privileged containers
- Namespace changes 
- Read/Writes to well-known directories such as `/etc`, `/usr/bin`, `/usr/sbin`, etc
- Creating symlinks
- Ownership and Mode changes
- Unexpected network connections or socket mutations
- Spawned processes using `execve`
- Executing shell or ssh binaries 
- More information on Falco documentation https://falco.org/docs/
## Getting Started with Falco

1. Installation: Falco can be easily deployed using containerised or Kubernetes-native deployment methods, with pre-built Helm charts and Docker images available for streamlined installation. Falco can use plugins to monitor cloud services such as GitHub, Okta, or AWS Cloudtrail.
2. Configuration: Administrators can customise Falco's configuration to tailor security policies and alerting thresholds according to their specific environment and use case requirements.
3. Integration: Falco integrates seamlessly with popular logging and monitoring platforms such as Prometheus, Grafana, and ELK stack, enabling centralised visibility and analysis of security events.
4. Community Support: Falco benefits from an active and supportive community, offering resources such as documentation, tutorials, and community forums to assist users in adopting and optimising their Falco deployments.

## Learn more about Falco

- Check out the [project website](https://falco.org/) and [GitHub](https://github.com/falcosecurity/falco) repository.
- Join Falco community on [Slack](https://kubernetes.slack.com/?redir=%2Fmessages%2Ffalco).
- [Register](https://learn.sysdig.com/path/falco/falco-101) for the 'Falco 101' all you need to learn to start with Falco. - **Free**
- [Register](https://learn.sysdig.com/path/falco/falco-plugins) for the 'Falco Plugins' Extending Falco to secure your cloud services. - **Free**
- [Register](https://training.linuxfoundation.org/training/detecting-cloud-runtime-threats-with-falco-lfs254/) for the ‘Detecting Cloud Runtime Threats with Falco’ training course. - **Paid**

# Conclusion

Incorporating CNCF Falco into the Shift-Left security paradigm empowers organisations to proactively identify and mitigate security risks throughout the software development lifecycle. By integrating security measures early in the development process, leveraging real-time threat detection, and automating response actions, Falco enables organisations to build and deploy secure containerized applications with confidence. Embracing Falco within the Shift-Left framework not only enhances security but also fosters a culture of collaboration, innovation, and continuous improvement across the organisation.

  
References: [https://www.cncf.io/announcements/2024/02/29/cloud-native-computing-foundation-announces-falco-graduation/](https://www.cncf.io/announcements/2024/02/29/cloud-native-computing-foundation-announces-falco-graduation/)