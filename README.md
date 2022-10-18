# README
## Introduction ##

Application Description

## Requirements ##

This code has been run and tested on:

* Ruby - 3.0.2p107
* Rails - 6.1.4.1
* Ruby Gems - Listed in `Gemfile`
* PostgreSQL - 13.3 
* Nodejs - v16.9.1
* Yarn - 1.22.11


## External Deps  ##

* Docker - Download latest version at https://www.docker.com/products/docker-desktop
* Heroku CLI - Download latest version at https://devcenter.heroku.com/articles/heroku-cli
* Git - Downloat latest version at https://git-scm.com/book/en/v2/Getting-Started-Installing-Git

## Installation ##

Download this code repository by using git:

 `git clone https://github.com/your_github_here.git`


## Tests ##

An RSpec test suite is available and can be ran using:

  `rspec spec/`

## Execute Code ##

Run the following code in Powershell if using windows or the terminal using Linux/Mac

  `cd your_github_here`

  `docker run --rm -it --volume "$(pwd):/rails_app" -e DATABASE_USER=test_app -e DATABASE_PASSWORD=test_password -p 3000:3000 dmartinez05/ruby_rails_postgresql:latest`

  `cd rails_app`

Install the app

  `bundle install && rails webpacker:install && rails db:create && db:migrate`

Run the app
  `rails server --binding:0.0.0.0`

The application can be seen using a browser and navigating to http://localhost:3000/

## Environmental Variables/Files ##

** Add instructions/description if your application requires it.

## Deployment ##

** Add instructions about how to deploy to Heroku


## CI/CD ##

TBD

## Support ##

Admins looking for support should first look at the application help page.
Users looking for help seek out assistance from the customer.

=======
## Introduction ## 
Our application allows members of IDEAAL to connect with each other by viewing a family tree of their mentorship group. They can view their direct mentors as well as the other mentees in ther mentorship group. Additionally they have access to a directory page from which they can obtain contact information of alumni and other members of the club. The application allows members to reach out to alumni to network and gain lucrative career opportunities.  

## Requirements ##

This code has been run and tested on:

* Ruby - 3.0.2p107
* Rails - 6.1.4.1
* Ruby Gems - Listed in `Gemfile`
* ReactJS - 18.2.0
* Yarn - 1.22.11

## External Deps  ##

* Docker - Download latest version at https://www.docker.com/products/docker-desktop
* Heroku CLI - Download latest version at https://devcenter.heroku.com/articles/heroku-cli
* Git - Downloat latest version at https://git-scm.com/book/en/v2/Getting-Started-Installing-Git

## Installation ##

Download this code repository by using git:

 `git clone https://github.com/IDEAsianAlumni/IDEAsianAmerican-Alumni`
 
 
An RSpec test suite is available and can be ran using:

  `rspec spec/`

## Execute Code ##

Run the following code in Powershell if using windows or the terminal using Linux/Mac

  `cd IDEAsianAmerican-Alumni`

  `docker run --rm -it --volume "$(pwd):/rails_app" -e DATABASE_USER=test_app -e DATABASE_PASSWORD=test_password -p 3000:3000 dmartinez05/ruby_rails_postgresql:latest`

  `cd rails_app`

Install the app

  `bundle install && rails webpacker:install && rails db:create && db:migrate`

Run the app
  `rails server --binding:0.0.0.0`

The application can be seen using a browser and navigating to http://localhost:3000/

## Deployment ##
First install Heroku by following these instructions depending on your system: https://devcenter.heroku.com/articles/heroku-cli#install-the-heroku-cli

After the installation is complete you can create an empty app by running the following command in the terminal while in the root directory of your local git repository: 
  `heroku create -a example-app`

To deploy the code run:
  `git push heroku main`

## CI/CD ##
For continuous integration, a github repository can be maintained on which code can will be built, tested, and merged. For continous deployment, a heroku pipeline can be set up so that changes in the github repository can be automatically deployed.  

## Support ##

Admins looking for support should first look at the application help page.
Users looking for help seek out assistance from the customer.
