## Price Estimate for AWS Server

Like said in the proposal, we will choose Shiny Server Open Source or Shiny Proxy. But either way, it's free so we'll focus on the AWS price plans.

This is a preliminary estimate because I just started learning about RAM, CPU, and Memory, and I can't be sure if I picked the right server plan for our deployment.

- AWS EC2 allows for upgrading and downgrading as you use it, so I chose a better server for the first month (10-100 users per day, about 1-10 user per hour)
- First month: t3.xlarge  
  * Monthly cost: 128.77 USD, On-Demand Hourly Cost: 0.224 USD
  * vCPUs: 4, Memory: 16GiB
- Months after that: t3.xmedium
  * Monthly cost: 32.19 USD, On-Demand Hourly Cost: 0.056 USD
  * vCPUs: 2, Memory: 4GiB

- First Year Estimate: 482.86 + tax
- Yearly Cost after First Year: 386.28 + tax




#### References:

- AWS Pricing Calculator [here](https://calculator.aws/#/createCalculator)
- Hardware Requirements for Shiny Server [here](https://support.rstudio.com/hc/en-us/articles/219001687-What-are-the-hardware-requirements-for-running-Shiny-Server-)
- EC2 Instance Types YouTube 5-minute tutorial [here](https://www.youtube.com/watch?v=ik2J0txfbdM&ab_channel=StephaneMaarek)
- EC2 Instance Types List [here](tps://ec2instances.info/?region=us-west-1&cost_duration=monthly)
- Shiny Proxy Slow Runtime troubleshoot [here](https://support.openanalytics.eu/t/concurrent-shinyproxy-apps-are-really-slow-compared-to-individual-apps-running-on-concurent-docker-images-without-shinyproxy/1013)
- How to estimate how many website visitors the server can deal with [here](https://servebolt.com/articles/calculate-how-many-simultaneous-website-visitors/)
