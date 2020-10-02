## Alternatives for Shiny App Deployment

### Ways to Deploy with RStudio Related Options

#### Shiny Server Pro / RStudio Connect

- Runs on Linux server, host many different code files
- Allows multiple R processes per app and many concurrent users
- *Paid* software product to install on your server
- Push-button publishing
- Best for enterprise environments
- Two page overview [here](https://rstudio.com/assets/img/RStudio-Connect-1Apr2020.pdf)

#### Shiny Server Open Source

- Runs on Linux, needs manual deployment of shiny apps
- Limited to one R process per app. Works for small amount of users, but not for big amount (will block each other)
- *Free*, but no support for authentication integration with popular auth providers
- can **ONLY** host Shiny Apps, not even R markdown docs; but it can host multiple shiny apps, each with their own URL or port.

#### shinyapps.io
- Shared hosting environment managed by RStudio, no installation required
- *Free* (very limited apps and active hours) and [paid plans](https://www.shinyapps.io/?_ga=2.67771091.353128789.1601597550-2009338063.1598025551)  
- Provides a dashboard to monitor the hosted app metrics, Non-enterprise environments

#### Shiny Proxy

- Open source but also fits in an enterprise environment, needs to manually set up
- Allows multiple R processes and apps for multiple users (docker containers)
- Starts a new app instance for each new user
- Java application server, built-in authentication and authorisation


### Hosting on a cloud VPS with R and Shiny Server

This is basically what Katie did with AWS, but you could also do the same with other cloud VPS such as Azure, etc.  We host our web apps on the third-party VPS (Virtual Private Server), but we need to first install R and Shiny Server remotely on the server. 







### References:
1. shinyapps.io, shiny server, shiny proxy comparison and tutorials [here](https://medium.com/@akpradhn/how-to-deploy-a-shiny-app-at-zero-cost-94e8897df34d)
2. (recommend) Alternative approaches to scaling shiny with RStudio Connect, ShinyProxy, or Custom Architecture [here](https://appsilon.com/alternatives-to-scaling-shiny/)
