Gatsby project on Docker.  
It was intended for development environment 

**gatsby-cli.sh / gatsby-cli.bat script:**
  
Start docker in an interactive mode with an shell session, so you can execute cli commands like "gatsby new gatsby-site" to generate an new project on base directory

**docker-compose up gatsby-develop**  
  
Gatsby will start a hot-reloading development environment accessible by default at http://localhost:8000

**docker-compose up gatsby-build**  
  
Gatsby will perform an optimized production build for your site, generating static HTML and per-route JavaScript code bundles.

**docker-compose up gatsby-serve**  
  
Gatsby starts a local HTML server for testing your built site. Remember to build your site using gatsby build before using this command.


