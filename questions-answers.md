
# Questions and Answers

---
**Question**: I am having trouble connecting [RDS](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html) and sharing connections with a group of people.  Is there an easier method?

**Answer**: You may find it more straightforward to use AWS Cloud9 as a development environment to connect to RDS.  You can see a [walkthrough here](https://aws.amazon.com/getting-started/tutorials/configure-connect-serverless-mysql-database-aurora/)

---
---
**Question**: The cloud services model is confusing.  What is PaaS and how is it different than other models?

**Answer**: One way to think about cloud offerings is to compare it to the food industry.  You can purchase food in bulk at a store like [Costco](https://www.costco.com/).  They have considerable scale and they can pass the purchase price discounts down to the customer.  As a customer though, you may also need to take that food back to your home, prepare it and cook it.  This is similar to IaaS.

Now let's look at a service like [Grubhub](https://www.grubhub.com/) or [Uber Eats](https://www.ubereats.com/en-US/).  Not only do you not have to drive to the store to pickup the food, but it has been prepared, cooked and delivered for you.  This is similar to PaaS.  All you have to do is eat the food.

If you look at PaaS (Platform as a Service), what it means is as the developer you can focus on the business logic.  Many of the complexities of software engineering are eliminated.  A good example of two early PaaS services are [Heroku](https://www.heroku.com/) and [Google App Engine](https://cloud.google.com/appengine/).  A good example of a [PaaS on AWS is AWS Sagemaker](https://aws.amazon.com/blogs/machine-learning/bring-your-own-deep-learning-framework-to-amazon-sagemaker-with-model-server-for-apache-mxnet/).  It solves many of the infrastructure issues involved with creating and deploying machine learning including distributed training and serving predictions.

---
---
**Question**: What is the exact definition of an edge location, it is confusing.

**Answer**: An [AWS edge location](https://aws.amazon.com/cloudfront/features) is a physical location in the world where a server lives.  Edge locations are different than datacenters because they serve a more narrow purpose.  The closer a user of the content is to the physical location of the server, the lower the latency of the request.  This is important in content deliver like streaming videos and music, and also for playing games.  The most commonly referred to edge service on AWS is CloudFront.  CloudFront is a CDN (Content Deliver Service).  Cached, or copies of the same movie file live in these locations all over the world via the CDN.  This allows users to all have a great experience streaming this content.

Other services that use edge locations include:  [Amazon Route 53](https://aws.amazon.com/route53/), [AWS Shield](https://aws.amazon.com/shield/), [AWS Web Application Firewall](https://aws.amazon.com/waf/) and [Lambda@Edge](https://aws.amazon.com/lambda/edge/).

---

---
**Question**: What if one data centers in an AZ and it gets affected by a fire?  Related to this how should a system be architected for data replication?

**Answer**: As part of the [shared security model](https://aws.amazon.com/compliance/shared-responsibility-model/), Amazon is responsible for the cloud and the customer is responsible for what is in the cloud.  This means that data is protected against catastrophic unplanned failures like fires.  If there is an outage, the data may be unavailable during the outage in that region, but will be restored.

As an architect, it is the customers responsibility to take advantage of multi-AZ architectures.  A good example of this is [Amazon RDS multi-AZ configuration](https://aws.amazon.com/rds/details/multi-az/).  In the event of an outage in one region the secondary slave database will already have the data replicated and be able to handle the request.

---

---
**Question**: What is HA (Highly Available)?

**Answer**: An HA (Highly Available) service is one that has been designed with availability in mind.  This means that failure has been expected and the design supports redundancy of data and services.  A good example of a HA service is [Amazon RDS](https://aws.amazon.com/rds/ha/).  RDS Multi-AZ design supports minimal interruption in service by allowing for multiple versions of the database to be replicated across availability zones.

---



