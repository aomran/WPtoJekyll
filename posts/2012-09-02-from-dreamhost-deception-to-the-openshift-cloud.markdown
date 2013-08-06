---
layout: post
title:  From Dreamhost deception to the OpenShift cloud
date:   2012-09-02 23:49:59
categories: amazon cloud cloud-hosting dreamhost hosting openshift paas
---
Last week I moved some of the websites that I maintain to dreamhost and I have to say that it was a **huge waste of time**. I had trialled their servers for a couple of weeks before migrating and everything was fine but the server performance was atrocious as soon as they started charging me for hosting.

Dreamhost offers unlimited disk space but few need this. A Wordpress installation is less than 20 megabytes and a gigabyte of disk space is worth literarily twelve cents on [amazon](http://aws.amazon.com/s3/ ""). The unlimited bandwidth is a useless measure since they limit memory usage. The bandwidth isn't even unlimited, they will ([according to them](http://dreamhost.com/unlimited-policy/ "")) ask you to move to a dedicated host if you start affecting server performance.

Most of the websites that I own or maintain (for clients) are tiny and don't need a dedicated server. I knew that the unlimited disk/bandwidth were bullshit measures so I focused on what was important to me at that point. I needed a server where I could host many small websites and the dreamhost support team assured me that they had the perfect product.

What I did was install four websites (three of them wordpress installations) using one user. The websites were excruciatingly slow so I emailed the dreamhost support. I was notified that I was going over the shared server memory limits. I have never had memory limit problems before and I've been on some pretty crappy hosts. Throughout the whole process they were trying to sell me a Virtual Private Server and copy/pasting "database optimization" solutions that were irrelevant to my situation. Why would I ever buy a VPS from dreamhost for a few websites which get very little traffic.

Anyhow, after doing some research I found out that dreamhost has a 90Mbyte (unconfirmed because dreamhost refuses to tell me) memory limit *per user*. So instead of trying to sell me a VPS they could have told me that creating a user for each domain/subdomain would solve the issue. Dreamhost is quick with the support but one can't say their support is useful. I'd rather wait a couple of days to get a real solution rather than get a sales pitch every few hours...

I have already started moving all of my websites away from dreamhost because I don't appreciate the deception. I'm not going to stick around to find other limitations... I can't trust their services for my self nor my clients.

Anyhow everything that I do is a learning experience; in this case I was pushed to finally try Openshift. My website is now hosted (for free) on a cloud server (Amazon US east I believe) thanks to the wonderful people at [Openshift by Red Hat](https://openshift.redhat.com "Openshift by Red Hat"). The website runs much faster, the limitations are crystal clear and of course it doesn't hurt that I don't pay anything.

Openshift is a PaaS ([platform as a service](https://openshift.redhat.com/community/paas "platform as a service")); in layman's terms it means they manage the servers (at Amazon) and all you have to do is code or make use of code! My next blog post will expand on this topic and provide a guide to help people get their websites hosted on Openshift.