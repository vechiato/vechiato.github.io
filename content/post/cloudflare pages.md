---
author: "Marcus Vechiato"
title: "How to Host Your Website for Free as friendly as possible for beginners"
date: "2024-10-26"
thumbnail: "/obsidian/cloudflare_pages.png"
aliases: 
  - /blog/cloudflare-pages
publish: true
tags:
  - code club
---
# **How to Host Your Website for Free No Git required!**

if you’ve just learned HTML and CSS and are eager to put your website online, Cloudflare Pages is an excellent, beginner-friendly way to host your site for free. This post was inspired by my own son, who recently asked me for a way to publish his site that looked a bit more professional than the usual coding platform links. Like him, you might be looking for something simple yet polished to showcase your work. This guide will walk you through the process without needing to know Git or any advanced setups.

![image](/obsidian/cloudflare_pages.png)

> **Why Cloudflare Pages?**  
> This method is perfect for new web developers who want a simple, professional way to showcase their work.

In this guide, I’ll walk you through setting up your website on Cloudflare Pages, using a ZIP file that contains your code.

---

## **Step 1: Sign Up for Cloudflare**

1. **Visit** [Cloudflare](https://www.cloudflare.com/) and sign up if you don’t already have an account. The free plan is all you need.
2. **Log in** to your account to access the Cloudflare dashboard.

---

## **Step 2: Prepare Your Project**

Make sure your website files (HTML, CSS, images, etc.) are well-organised and zipped together.

1. **Organize Your Files**: Put all files in one main folder (e.g., “MyWebsite”).
    - Make sure your main HTML file is named `index.html`, as this will be the homepage of your site.
2. **Create a ZIP File**: Select all the files and subfolders inside your main project folder, then **right-click** and choose **"Compress"** or **"Send to ZIP"** to create a ZIP file. Make sure that only the files and subfolders are included in the ZIP **do not include the main folder itself**.

> If you include the main folder, your URL will end up looking like this: `mywebsite.pages.dev/MyWebsite`, which is not ideal since it adds an extra path.

---

## **Step 3: Set Up a New Project in Cloudflare Pages**

1. **Go to Cloudflare Pages**: In your Cloudflare dashboard, go to **Workers & Pages** and click on **Create a project**.
2. **Choose the tab Pages**.
3. **Create using direct upload**: Select the option to upload a ZIP file directly. click on **Upload Assets**.

---

## **Step 4: Configure the Project**

1. **Project Name**: Give your project a name. This will be part of your website’s URL (e.g., `mywebsite.pages.dev`) and click on **Create project**.
2. **Upload the ZIP File**: Drag and drop your ZIP file, or click to browse and select it and click on **Deploy site**.

---

## **Step 5: Deploy and Go Live!**

Click **Save and Deploy**. Cloudflare will now build and host your website. In a few seconds, you should see a “Your site is live” message with a link to your new website. Click the link to see your site live!

---

# **And That’s It!**

Congratulations, your website is now live! You can share the link with friends, family, or anyone who’d like to see your work.