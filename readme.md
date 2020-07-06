# Gatsby project on Docker.
Intended for development environment 

https://hub.docker.com/r/uilton/gatsby-development

## Interactive Shell:  
Start docker in an interactive mode with an shell session, so you can execute cli commands like "gatsby new gatsby-site" to generate an new project on current directory  

#### Command:
`docker run -it --rm -v "$(pwd):/site" -p 8000:8000 uilton/gatsby-development:latest sh`  

_Alternatively_: `gatsby.sh` / `gatsby.bat` (scripts included in git repository, may be useful to include it in your System PATH)
  

## Gatsby develop
Gatsby will start a hot-reloading development environment accessible by default at http://localhost:8000  

#### Command:
`docker run -it --rm -v "$(pwd):/site" -p 8000:8000 uilton/gatsby-development:latest gatsby develop --host 0.0.0.0`  
_Alternatively_: `docker-compose up gatsby-develop`  

## Gatsby build
Gatsby will perform an optimized production build for your site, generating static HTML and per-route JavaScript code bundles.  

#### Command:
`docker run -it --rm -v "$(pwd):/site" -p 8000:8000 uilton/gatsby-development:latest gatsby build`)  
  
_Alternatively_: `docker-compose up gatsby-build` (docker-compose.yml included in git repository)     
  
  
  
## Gatsby serve
Gatsby starts a local HTML server for testing your built site. Remember to build your site using gatsby build before using this command.  

#### Command:
`docker run -it --rm -v "$(pwd):/site" -p 8000:8000 uilton/gatsby-development:latest gatsby develop --host 0.0.0.0`  
  
_Alternatively_: `docker-compose up gatsby-develop` (docker-compose.yml included in git repository)  

## Gatsby build
Gatsby will perform an optimized production build for your site, generating static HTML and per-route JavaScript code bundles.  

#### Command:
`docker run -it --rm -v "$(pwd):/site" -p 8000:8000 uilton/gatsby-development:latest gatsby serve --host 0.0.0.0`
  
_Alternatively_: `docker-compose up gatsby-serve`  (docker-compose.yml included in git repository)        
  

## Building local image instead
Eg.: `docker-compose -f docker-compose.yml -f docker-compose.local.yml up gatsby-serve`
