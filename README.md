# Dashboard [![Build Status](http://travis-ci.org/cloverinteractive/clovercms-dashboard.png)](http://travis-ci.org/cloverinteractive/clovercms-dashboard)
### Simple dashboard theme for rails 3.x

## Requirements
* [Bundler](http://gembundler.com)
* [Sass](http://sass-lang.com/)
* [Compass](http://compass-style.org)

## Getting Started

To install simply fire up your favorite editor and write `gem 'clovercms-dashboard', :require => :dashboard` in your `Gemfile` then:

0. `bundle install`
1. `rails g clover_cms:dashboard:install`
2. Enjoy!

## Running the tests

You first need to download dashboard from git and do as follows:

0. `git clone git://github.com/cloverinteractive/clovercms-dashboard.git`
1. `cd clovercms-dashboard`
2. `bundle install`
3. `cd test/dummy && rails g clover_cms:dashboard:install && cd ../../`
4. `rake`

## Personalize the way I use dashboard

### Wait, wha'?

`rails g clover_cms:dashboard:install` copies the needed sass and images for your application to have a dashboard look.

### But wait! I want to put my sass somewhere else in app

By default sass will get copied to `app/stylesheets` which is compass, standard, but you can switch it to any other place within app just by sending a parameter:

`rails g clover_cms:dashboard:install sass # This will copy all the sass files to app/sass instead` 

### But wait! I'm playing with rails 3.1 I need the asset pipeline assets dir

Relax once again the answer is one parameter away:

`rails g clover_cms:dashboard:install --asset-pipeline`

### But wait! I want my views too

Simply run `rails g clover_cms:dashboard:views` that will copy all the views into your app/views directory.

### But wait! I use haml

Simply run `rails g clover_cms:dashboard:views --haml` that should do it.

## Supported platforms

We currently test and integrate in:

* ruby 1.9.2
* ruby 1.8.7
* ree

## Run the rails dummy application

This gem comes with a dummy application to test in the browser, just do
the following from the articulate dir:

0. `cd test/dummy`
1. `rails s`
2. You can now visit http://localhost:3000/ in your browser

## Contribute

Feel free fork this project and submit a pull request, don't forget to add yourself to the contributors list in this README file.

## Contributors

* [Enrique Vidal](http://github.com/EnriqueVidal) - Ruby developer
* [Adan Alvarado](http://github.com/aalvarado) - Designer and Front end developer
