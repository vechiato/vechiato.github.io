---
author: "Marcus Vechiato"
title: "Do SLAs, Error Budgets, and Availability Metrics Include Maintenance Windows?"
date: "2025-04-14"
thumbnail: "/obsidian/effective-sre-scope.png"
publish: true
tags: 
  - sla
  - sre
  - slo
  - error budget
--- 


# 🔧 Do SLAs, Error Budgets, and Availability Metrics Include Maintenance Windows?

When it comes to service reliability, maintenance windows can be a gray area. Whether you're tracking uptime, setting SLOs, or managing customer expectations through SLAs, the question often comes up:

> _“Should scheduled maintenance count against our SLA? What about our error budget or availability metrics?”_

Let’s unpack how scheduled (and unscheduled) maintenance affects your SLAs, error budgets, and availability calculations — and what best practices look like.

![image](/obsidian/effective-sre-scope.png)

---

### 📜 SLA: Do Maintenance Windows Count?

**Service Level Agreements (SLAs)** are typically **contractual commitments** made to customers, promising a certain level of service availability (e.g., 99.9% uptime).

#### ✅ **Planned Maintenance Is Usually Excluded**

Most SLAs **exclude scheduled and communicated maintenance windows** from downtime calculations. That means if:

- Maintenance was planned,
    
- Properly communicated in advance (often 24–72 hours), and
    
- Done within agreed-upon time windows (e.g., off-peak hours),
    

…it usually does **not count against the SLA**.

#### ❌ Unscheduled or Overrun Maintenance May Count

However, if:

- The maintenance wasn't properly communicated,
    
- It ran longer than scheduled,
    
- It was done during peak usage without approval,
    

…it **can count as downtime** and lead to SLA violations or service credits.

---

### 🎯 Error Budgets: Are They Affected by Maintenance?

**Error budgets** represent the amount of failure or unreliability tolerated over a period, based on an **SLO** (Service Level Objective). If your SLO is 99.9% uptime per month, your error budget is about **43.2 minutes** of allowed downtime.

#### 🚫 **Planned Maintenance Usually Doesn’t Burn Budget**

If maintenance is pre-approved and doesn't disrupt users, it’s typically excluded from the error budget — especially in SRE frameworks that prioritize **user-perceived reliability**.

#### ✅ **User-Impacting Events Do Burn Budget**

If users are affected — even during scheduled maintenance — some orgs choose to count it against the error budget. The key question is:

> _“Would a user notice or be blocked?”_

If yes, it probably burns error budget. If no, it likely doesn't.

---

### 📈 Availability: Does Maintenance Affect It?

**Availability** is the actual **measured uptime** of your service over a specific period — typically expressed as a percentage like 99.95%.

Whether maintenance counts against it depends on **how you define availability** in your metrics.

#### 🔸 **User-Facing Availability**

If your availability metric reflects **user impact**, planned maintenance that’s properly communicated is **often excluded**.

#### 🔹 **System-Level (Strict) Availability**

If you're measuring raw service uptime (e.g., pings, monitoring checks), all downtime — including planned maintenance — **might be included**.

---

### 📌 Summary Table

|Maintenance Type|Counts Toward SLA?|Burns Error Budget?|Affects Availability?|
|---|---|---|---|
|**Planned & Communicated**|❌ Usually Not|❌ Usually Not|❌* If defined that way|
|**Unplanned or Overrun**|✅ Yes|✅ Yes|✅ Yes|
|**Poorly Communicated**|✅ Yes|✅ Yes|✅ Yes|

---

### 🧠 Best Practices

- 📑 **Define everything explicitly**: Make sure SLAs, SLOs, and availability metrics clearly state how maintenance is handled.
    
- 📣 **Communicate proactively**: Proper notification is key to excluding maintenance from SLAs and error budgets.
    
- 🎯 **Focus on user impact**: Base decisions on whether users are affected, not just whether systems are up or down.
    
- 🤝 **Align across teams**: Ensure engineering, product, and legal are aligned on how you track and report service health.
    


