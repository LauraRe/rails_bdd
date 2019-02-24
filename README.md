Running on [Heroku](https://rails-bdd-laurare.herokuapp.com/)
# Rails BDD

## Prerequisites

PostgreSQL

## Installing

```
$ git clone https://github.com/LauraRe/rails_bdd.git
```
```
bundle install
```
```
rails db:migrate
```
## Running the tests
Run rake to perform feature and unit tests simultaneously.
```
$ rake
````
Run cucumber to perform feature tests.
```
$ cucumber
```
Run RSpec to perform unit tests.
```
$ rspec
```

## Built With
[Rails](https://rubyonrails.org/)

## Author 
[Laura Reale](https://github.com/LauraRe)  

## User Stories 

    As a visitor,
    When I visit the landing page of the application
    I would like to see a list of all articles

    As a visitor,
    In order to express my opinion
    I would like to be able to post comments about an article

    As a publisher
    In order to add relevant content to my news service
    I would like to be able to create articles

    As a publisher
    In order to keep my content accurate
    I would like to be able to edit my articles