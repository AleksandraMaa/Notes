## Alternatives for Shiny App Deployment

### Hosting on a cloud service with R and Shiny Server / Proxy

This is basically what Katie did with AWS, but we could also do the same with other cloud service provider such as Microsoft Azure, etc.  We need to first install R and Shiny Server/Shiny Proxy remotely on the server, and then host our shiny app there.

#### Shiny Server Open Source

- Runs on Linux, needs manual deployment of shiny apps
- Limited to one R process per app. Works for small amount of users, but not for big amount (will block each other)
- *Free*, but no support for authentication integration with popular auth providers
- can **ONLY** host Shiny Apps, not even R markdown docs; but it can host multiple shiny apps, each with their own URL or port.

#### Shiny Proxy

- Open source but also fits in an enterprise environment, needs to manually set up
- Allows multiple R processes and apps for multiple users (docker containers)
- Starts a new app instance for each new user
- Java application server, built-in authentication and authorisation
- Set up tutorial [here](https://www.databentobox.com/2019/11/05/deploy-r-app-with-shinyproxy/)


### Hosting on RStudio Services

#### Shiny Server Pro / RStudio Connect

- Runs on Linux server, host many different code files
- Allows multiple R processes per app and many concurrent users
- *Paid* software product to install on your server
- Push-button publishing
- Best for enterprise environments
- Two page overview for RStudio Connect [here](https://rstudio.com/assets/img/RStudio-Connect-1Apr2020.pdf)
- Shiny Server Pro - not actively developing any more


#### shinyapps.io
- Shared hosting environment managed by RStudio, no installation required
- *Free* (very limited apps and active hours) and [paid plans](https://www.shinyapps.io/?_ga=2.67771091.353128789.1601597550-2009338063.1598025551)  
- Provides a dashboard to monitor the hosted app metrics, Non-enterprise environments




#### Conclusion

I think the deployment for previous case study is pretty good, but if we have the need to have multiple R processes for multiple users at the same time, Shiny Proxy would be a good alternative. We still need a third-party cloud service provider to host though. But both Shiny Server and Shiny Proxy are open source and free.


### References:
1. shinyapps.io, shiny server, shiny proxy comparison and tutorials [here](https://medium.com/@akpradhn/how-to-deploy-a-shiny-app-at-zero-cost-94e8897df34d)
2. (recommend) Alternative approaches to scaling shiny with RStudio Connect, ShinyProxy, or Custom Architecture [here](https://appsilon.com/alternatives-to-scaling-shiny/)
