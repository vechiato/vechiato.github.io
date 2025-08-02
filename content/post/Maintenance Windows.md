---
author: "Marcus Vechiato"
title: "SLA, Error Budget, Uptime: Where Do Maintenance Windows Fit?"
date: "2025-04-14"
thumbnail: "/obsidian/effective-sre-scope.png"
publish: true
tags: 
  - sla
  - sre
  - slo
  - error budget
--- 

When it comes to service reliability, maintenance windows are a frequent source of ambiguity. Whether you’re defining uptime, setting SLOs, or communicating with customers, it’s essential to be explicit about how scheduled (and unscheduled) maintenance is handled. Here’s a deeper dive with actionable recommendations for SREs, engineering managers, and anyone responsible for reliability targets.


![image](/obsidian/effective-sre-scope.png)

---

### **SLA: Do Maintenance Windows Count?**

**Service Level Agreements (SLAs)** are typically **contractual commitments** made to customers, promising a certain level of service availability (e.g., 99.9% uptime).

#### **Planned Maintenance Is Usually Excluded**

Most SLAs **exclude scheduled and properly communicated maintenance windows** from downtime calculations, provided:

- Maintenance is planned and communicated well in advance (typically 24–72 hours)
- It occurs within agreed windows (often off-peak)
- The duration and impact are within expectations

#### **Unscheduled or Overrun Maintenance May Count**

However, if:

- The maintenance wasn't properly communicated,
    
- It ran longer than scheduled,
    
- It was done during peak usage without approval,
    

…it **can count as downtime** and lead to SLA violations or service credits.

---

### **Error Budgets: Are They Affected by Maintenance?**

**Error budgets** represent the amount of failure or unreliability tolerated over a period, based on an **SLO** (Service Level Objective). If your SLO is 99.9% uptime per month, your error budget is about **43.2 minutes** of allowed downtime.

#### **Planned, Non-Disruptive Maintenance Usually Doesn’t Burn Budget**

If maintenance is pre-approved and has minimal user impact, many SRE frameworks **exclude it from error budgets**, especially when focusing on user-perceived reliability.

#### **User-Impacting Events Do Burn Budget**

If users are affected, even during scheduled maintenance some orgs choose to count it against the error budget. The key question is:

> _“Would a user notice or be blocked?”_

If yes, its likely burns error budget. 

---
### **Multi-Region & Modern Deployments**

For rolling upgrades or blue/green deployments, consider whether each region’s window is counted separately and how partial availability is measured. Explicitly document these scenarios in your SLO/SLA definitions.
### **Availability Metrics: Does Maintenance Affect them?**

**Availability** is typically measured as the percentage of time a service is operational.
Whether maintenance counts against it depends on **how you define availability** in your metrics.

#### 🔸 **User-Facing Availability**

If your metric reflects **user impact**, planned and well-communicated maintenance is **often excluded**.

#### 🔹 **System-Level (Strict) Availability**

If you're measuring raw service uptime (e.g., via monitoring checks), all downtime, including planned maintenance, **may be included**.

#### Example

If you perform a rolling restart across three regions, document whether each region’s window is counted separately or if global user impact is the metric.

### **Best Practices**

- **Define Everything Explicitly:** Document how maintenance is handled in SLAs, SLOs, error budgets, and availability metrics. Include examples and edge cases.
- **Reference Industry Standards:** Align with frameworks like Google SRE, ITIL, or major cloud provider SLAs for benchmarks.
- **Communicate Proactively:** Notify all stakeholders (internal and external) well in advance. For regulated industries, follow compliance requirements.
- **Focus on User Impact:** Base decisions on real user experience, not just system status.
- **Align Across Teams:** Ensure engineering, product, and legal are on the same page.
- **Review Regularly:** Revisit definitions and practices as your architecture or business needs evolve.

---

### **Summary Table**

|   |   |   |   |   |
|---|---|---|---|---|
|Maintenance Type|Counts Toward SLA?|Burns Error Budget?|Affects Availability?|Notes/Examples|
|Planned & Communicated|❌ Usually Not|❌ Usually Not|❌* If defined that way|Exclude if no user impact, per contract|
|Unplanned/Overrun|✅ Yes|✅ Yes|✅ Yes|Count as downtime, triggers credits/penalties|
|Poorly Communicated|✅ Yes|✅ Yes|✅ Yes|Treat as unplanned|
|Rolling Upgrades|❓ Varies|❓ Varies|❓ Varies|Define per region/global, document explicitly|
|Regulatory Maintenance|❓ Check contract|❓ Check contract|❓ Check contract|May require notification, reporting, approvals|

---

### **Final Thoughts**

Explicit documentation and proactive communication are your best tools for avoiding disputes and ensuring everyone, from engineers to customers, has the same expectations. As systems and contracts grow more complex, revisit these definitions regularly and benchmark against industry standards.


