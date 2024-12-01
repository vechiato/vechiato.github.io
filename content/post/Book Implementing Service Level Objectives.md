---
author: "Marcus Vechiato"
title: "Insights from Implementing Service Level Objectives"
date: "2024-11-19"
thumbnail: "/obsidian/implementing service level objectives.jpg"
publish: true
tags:
  - book
  - sre
--- 
# Insights from: Implementing SLO

Reliability is a cornerstone of successful services, but how do we define and measure it effectively? Implementing Service Level Objectives by Alex Hidalgo provides a practical guide to adopting SLO-based approaches, allowing teams to balance user expectations and operational constraints. With its insights into SLIs (Service Level Indicators), SLOs (Service Level Objectives), and error budgets, the book helps bridge the gap between abstract goals and actionable strategies.

I chose this book because it offers a structured way to think about reliability, a critical aspect of any service, especially in today’s complex systems. Readers can expect to gain an in-depth understanding of how to define, measure, and act upon reliability metrics while fostering a culture of continuous improvement.

![image](/obsidian/implementing service level objectives.jpg)
2020 by Alex Hidalgo

## Summary

### Part I: SLO Development

#### Chapter 1: The Reliability Stack

This chapter introduces the building blocks of reliability: SLIs, SLOs, and error budgets. Hidalgo emphasises that reliability should reflect user perception and that aiming for 100% perfection is both impractical and unnecessary. The "Reliability Stack" provides a framework for balancing reliability and innovation.

#### Chapter 2: How to Think About Reliability

Hidalgo explores the subjective nature of reliability and how it depends on user expectations. He stresses that reliability is not about absolute perfection but about being "good enough" for your users. This chapter also introduces the importance of implied agreements between services and their users.

#### Chapter 3: Developing Meaningful Service Level Indicators

Here, the focus shifts to SLIs, the core metrics that reflect user experience. Hidalgo discusses how to identify meaningful SLIs and align them with user needs. He also highlights the importance of keeping SLIs understandable for stakeholders.

#### Chapter 4: Choosing Good Service Level Objectives

SLOs are targets for reliability, and this chapter explains how to set them effectively. Hidalgo warns against overcomplicating SLOs and stresses aligning them with user expectations and business goals. He also discusses challenges like setting appropriate reliability thresholds and avoiding "too many nines."

#### Chapter 5: How to Use Error Budgets

Error budgets quantify how much unreliability a system can tolerate within a given period. Hidalgo explains how error budgets can guide decision-making, enabling teams to balance reliability with innovation. He also explores how to incorporate error budgets into organisational processes.

### Part II: SLO Implementation

#### Chapter 6: Getting Buy-In

This chapter emphasises the importance of gaining organisational support for SLOs. Hidalgo discusses strategies for aligning stakeholders across engineering, product, and leadership teams. He also addresses common objections and how to overcome them.

#### Chapter 7: Measuring SLIs and SLOs

Practical advice on collecting and analysing metrics takes center stage here. Hidalgo explains how to design flexible, cost-effective measurement systems while ensuring they reflect user experience accurately.

#### Chapter 8: SLO Monitoring and Alerting

Effective alerting ensures that issues affecting user experience are addressed promptly. Hidalgo contrasts traditional threshold-based alerting with SLO-based approaches, emphasising the latter's ability to reduce noise and focus on what is important.

#### Chapter 9: Probability and Statistics for SLIs and SLOs

This chapter dives into the math behind SLOs, including probability and statistical models. Hidalgo explains concepts like percentile thresholds and Bayesian inference, helping readers build robust measurement systems.

#### Chapter 10: Architecting for Reliability

System architecture plays a crucial role in achieving reliability goals. Hidalgo covers strategies for designing resilient systems, including identifying dependencies, anticipating failures, and instrumenting systems for better observability.

#### Chapter 11: Data Reliability

This chapter focuses on ensuring the reliability of data services, such as databases and storage platforms. Hidalgo discusses the unique challenges these systems pose, including data correctness and durability, and how to address them using SLOs.

#### Chapter 12: A Worked Example

Hidalgo provides a detailed case study of implementing SLOs for a fictional service, "Dogs Deserve Clothes." This practical example ties together concepts from earlier chapters, illustrating how to apply them in real-world scenarios.

### Part III: SLO Culture

#### Chapter 13: Building an SLO Culture

Adopting SLOs requires cultural change. Hidalgo offers strategies for shifting organizational mindsets and prioritizing reliability work. He also emphasizes the iterative nature of SLOs and the importance of continuous improvement.

#### Chapter 14: SLO Evolution

SLOs are not static. This chapter discusses how to revisit and refine SLOs as user needs, dependencies, and systems evolve. Hidalgo also covers the importance of listening to users and using failure as a learning opportunity.

#### Chapter 15: Discoverable and Understandable SLOs

Making SLOs accessible and comprehensible to all stakeholders is critical for success. Hidalgo explores ways to document and share SLOs effectively, ensuring they are easy to discover and understand.

#### Chapter 16: SLO Advocacy

Promoting SLO adoption within an organization is an ongoing effort. Hidalgo provides a roadmap for advocating SLOs, from starting with pilot projects to scaling adoption across teams.

#### Chapter 17: Reliability Reporting

The book concludes with guidance on reporting reliability metrics. Hidalgo explains how to present data in ways that drive meaningful discussions and support better decision-making.

## Key Takeaways

### Key Takeaway 1: Think Like a User

- **Explanation:** Reliability should be measured from the perspective of the user, not internal metrics.
- **Reflection:** This insight challenges traditional engineering mindsets and fosters user-centered design.
- **Quote:** “How you appear to be operating to your users is what determines whether you’re being reliable or not.” (Chapter 1, 2)

### Key Takeaway 2: Embrace Imperfection

- **Explanation:** Perfection is costly and unnecessary. Instead, focus on being "good enough" to meet user expectations.
- **Reflection:** This mindset encourages pragmatic decision-making and resource optimization.
- **Quote:** "You don’t want your target to be perfect reliability, but you’ll need your service to do what it is supposed to well enough for it to be useful to your users." (Chapter 1, pg 13)

### Key Takeaway 3: Use Error Budgets to Balance Priorities

- **Explanation:** Error budgets help teams balance reliability with feature development and innovation.
- **Reflection:** This approach reduces conflicts between engineering and product teams, fostering alignment.
- **Quote:** "If you’re out of error budget, you should take a step back and focus on making your service more reliable." (Chapter 5, pg 69)

### Key Takeaway 4: SLOs Are a Process, Not a Project

- **Explanation:** SLOs require continuous iteration and refinement as systems and user needs evolve.
- **Reflection:** This aligns with the agile principle of embracing change and improving incrementally.
- **Quote:** “The world is always changing, and you should be prepared to update and change your SLIs and SLOs.” (Chapter 14, pg 309)

### Key Takeaway 5: Foster an SLO Culture

- **Explanation:** Successful SLO adoption depends on building a culture that prioritizes user experience and continuous improvement.
- **Reflection:** This highlights the human element of reliability engineering, emphasizing collaboration and communication.
- **Quote:** “SLO-based approaches encourage thinking about the reliability of your services in a different and more accurate way.” (Chapter 13, pg 283)

## Personal Reflections

_Implementing Service Level Objectives_ fundamentally reshaped how I think about reliability. By focusing on user-centric metrics and acknowledging the inevitability of failure, the book provides a practical framework for balancing operational constraints with user satisfaction. The emphasis on culture and communication underscores that reliability is as much about people as it is about systems.

## Conclusion

Alex Hidalgo’s _Implementing Service Level Objectives_ is an essential read for anyone involved in managing complex systems. With its mix of theory, practical examples, and cultural insights, the book offers a comprehensive guide to improving reliability. Whether you're an engineer, manager, or product leader, this book will help you foster better conversations, make data-driven decisions, and ultimately deliver more reliable services.