# README

Welcome to Keen Bean, an ecommerce web application built on the Ruby on Rails framework. Keen Bean offers Coffee and Tea products and implements foundational web application concepts including, but not limited to, Authentication, Authorization, Carts, Joins Tables, Project Management Workflow implementation/execution, and Image Uploading.

## Table of Contents:

#### 1) Gemfile Setup

::Please include the following code below in your Gemfile

source 'https://rubygems.org'
```
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

  gem 'rails', '>= 5.1.4'
  gem 'pg', '>= 0.18'
  gem 'puma', '>= 3.7'
  gem 'sass-rails', '>= 5.0'
  gem 'uglifier', '>= 1.3.0'
  gem 'coffee-rails', '>= 4.2'
  gem 'jbuilder', '>= 2.5'
  gem 'bcrypt', '>= 3.1.7'
```
### Call 'byebug' anywhere in the code to stop execution and get a debugger console

```
  group :development, :test do
    gem 'byebug'
    gem 'capybara'
    gem 'launchy'
    gem 'rspec-rails'
    gem 'pry'
    gem 'factory_bot_rails'
    gem 'shoulda'
  end

  group :development do
    # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
    gem 'web-console', '>= 3.3.0'
    gem 'listen', '>= 3.0.5', '< 3.2'
  end
```
Windows does not include zoneinfo files, so bundle the tzinfo-data gem
```
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
```
:: After including the gems in your gemfile, please run the command below in your terminal:

```
Bundle Install
```

#### 2) Migration Commands:

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

#### 3) Executing the Test Suite

:: In order to run the test suite, from command line, run ```rspec``` or ```bundle exec rspec``` in order to run the test suite.

::If an error message appears in regards to a table or relation that doesnt exist when it clearly exists in the code, please type the following command into the command line.
```
rake db:test:prepare  
```
::If you are experiencing an issue with migrations not running due to errors, please type the following commands into your terminal line.
```
bin/rails db:migrate RAILS_ENV=test
```
#### 4) Heroku Deployment Instructions

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
