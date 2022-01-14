# Marios Specialty Products
##### By Isaac Overstreet

## Description
This is an application to mimic a specialty food webpage with products and reviews for each product. As well as admin privileges for CRUD functionality.  

## Technologies Used
* Ruby
* Rails
* Gem
* rspec
* Pry
* IRB
* Capybara
* Postgres
* SQL
* Bootstrap scss
* Faker

## Setup instructions
* Clone the GitHub repository: https://github.com/christophermneal/rails_employee_tracker
* From the main project directory, enter `bundle install` in the terminal to populate gems.
* To create a database, type in your terminal: `rake db:setup`
* Enter `rspec` into the terminal to confirm passing of all tests.
* Run `rails s` to start the Rails server.
* Open browser and enter the url http://localhost:3000/ unless otherwise prompted in the terminal.

## Database steps
* bundle the gems
* run postgres
* to create the DB run createdb volunteer_tracker
* run psql volunteer_tracker < database_backup.sql to backup database
* run rspec in a new terminal to view tests
* ruby app.rb to launch live server. enter in local server port number into browser -- localhost:0000 (your port will replace the 0000)
(docker)
* docker-compose run db to start db container, then run docker ps to get container ID.
* Next, run docker exec -it -u postgres [container id] psql to start psql
* Then run CREATE DATABASE volunteer_tracker; to create db
* then CREATE DATABASE volunteer_tracker_test; for test database
* run docker-compose run --rm web bundle exec rspec to run tests
* to get local server run docker-compose up --build
* open browser and enter in local host port the same as the not docker way.

## Copyright & Licensing

[MIT](https://opensource.org/licenses/MIT) licensing (c) 2022 Isaac Overstreet


