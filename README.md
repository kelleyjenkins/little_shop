# README

Welcome to Keen Bean, an e-commerce web application built on the Ruby on Rails framework. Keen Bean offers Coffee and Tea products and implements foundational web application concepts including, but not limited to, Authentication, Authorization, Carts, Joins Tables, Project Management Workflow implementation/execution, and Image Uploading.

## Setup:

#### 1) Migration Commands:

Rake command to create database:
```
rake db:create
```
Rake command to create migration:
```
rails g migration
```
Rake command to update schema with created migration:
```
rake db:migrate
```
Rake command to seed database:
```
rake db:seed
```

#### 2) Executing the Test Suite

:: In order to run the test suite, from command line, run ```rspec``` or ```bundle exec rspec```.

::If an error message appears in regards to a table or relation that doesnt exist when it exists in the code, please type the following command into the command line:
```
rake db:test:prepare  
```
::If you are experiencing an issue with migrations not running due to errors, please type the following commands into your terminal line.
```
bin/rails db:migrate RAILS_ENV=test
```
#### 3) Heroku Deployment Instructions

::DEPLOY EARLY AND DEPLOY OFTEN

::Good luck

## Additional Info
Keen Bean was developed by a group of Student Developers at the Turing School of Software & Design. The developers are part of the Back End Engineering Cohort, specifically Module 2.

## Developers
Primary contributors:
- [Kelley Jenkins](https://github.com/kelleyjenkins) 
- [Timothy Tyrrell](https://github.com/timomitchel)
- [Timothy Joo](https://github.com/Tyjoo26)

Secondary Contributors & Code Reviewers: Ilana Corson and Ali Schlereth.
