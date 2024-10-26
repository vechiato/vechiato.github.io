---
author: "Marcus Vechiato"
title: "How to Host Your Website for Free Using Cloudflare Pages"
date: "2024-10-26"
thumbnail: "/obsidian/cloudflare_pages.png"
publish: true
tags:
  - codeclub
---
# **How to Host Your Website for Free Using Cloudflare Pages**

![image](/obsidian/cloudflare_pages.png)

Just learned HTML and CSS and ready to put your website live? Cloudflare Pages is an excellent option to host your project for free. With Cloudflare Pages, you can easily get your website up and running without diving into complex server configurations.

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
2. **Create a ZIP File**: Right-click the folder, choose "Compress" or "Send to ZIP," and save it.

---

## **Step 3: Set Up a New Project in Cloudflare Pages**

1. **Go to Cloudflare Pages**: In your Cloudflare dashboard, go to **Workers & Pages** and click on **Create a project**.
2. **Choose the tab Pages**.
3. **Create using direct upload**: Select the option to upload a ZIP file directly.
4. **Upload the ZIP File**: Drag and drop your ZIP file, or click to browse and select it.

---

## **Step 4: Configure the Project**

1. **Project Name**: Give your project a name. This will be part of your website’s URL (e.g., `mywebsite.pages.dev`).
2. **Root Directory**: If your files are all in the main folder, you can leave this blank. If they’re nested, specify the folder where `index.html` is located.
3. **Settings**: Leave other settings at default for now.

---

## **Step 5: Deploy and Go Live!**

Click **Save and Deploy**. Cloudflare will now build and host your website. In a few seconds, you should see a “Your site is live” message with a link to your new website. Click the link to see your site live!

---

# **And That’s It!**

Congratulations, your website is now live! You can share the link with friends, family, or anyone who’d like to see your work.