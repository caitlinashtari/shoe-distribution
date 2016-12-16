# _Shoe Distribution_

#### By _**Caitlin Ashtari**, 12/16/1988_

## Description

#### _This application tracks shoe brands and the stores they are sold in. A user can create a store, create a shoe brand, and link the two with a many-to-many relationship._

**User Stories**

* As a user, I want to be able to add, update, delete and list shoe stores.
* As a user, I want to be able to add and list new shoe brands.
* As a user, I want to be able to add existing shoe brands to a store to show where they are sold.
* As a user, I want to be able to associate the same brand of shoes with multiple stores.
* As a user, I want to be able to see all of the brands a store sells on the individual store page.
* As a user, I want store names and shoe brands to be saved with a capital letter no matter how I enter them.
* As a user, I do not want stores and shoes to be saved if I enter a blank name.

## Setup/Installation Requirements

* Clone this repo: `git clone https://github.com/caitlinashtari/shoe-distribution`
* Change to the repo directory: `cd shoe-distribution`
* Install gems: `bundle install --path vendor/bundle`
* Install the database: *instruction below*
* Run the app: `ruby app.rb`

## Database Setup Instructions

* install and start postgres
* run: `bundle exec rake db:create`
* run: `bundle exec rake db:migrate`
* run: `bundle exec rake db:test:prepare`

## Technologies Used

_Ruby, Sinatra, SQL, Postgres, AdvancedRecord, MaterializeCSS_

### License

*MIT License*

Copyright (c) 2016 **_Caitlin Ashtari_**
