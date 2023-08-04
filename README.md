# My Notes

This is the repository of a API Rest Backend developed in Ruby on Rails. Below you will find important information about the project and how to run it.

# Requirements

Before running the API, make sure you have the following installed:

    Ruby 3.0.4
    Ruby on Rails 7.0.6
    PostgreSQL (version 1.1 or higher)
    Puma web server 5.0

# Installation

Follow these steps to set up the project:

    Clone the repository to your local machine:

git clone <REPOSITORY_URL>

    Install the dependencies using Bundler:

bundle install

    Configure the database:

Ensure you have PostgreSQL installed and configured on your machine. Then, run the following commands:

rails db:create
rails db:migrate

# RUN TESTS

rails db:load:fixtures
rails t

# Execution

To run the development server, use the following command:

rails server

This will start the Puma server, and your API will be available at http://localhost:3000.

# CORS (Cross-Origin Resource Sharing)

The API is configured to handle CORS, allowing AJAX requests from different origins. This is useful if you plan to consume the API from a separate frontend.
Development Groups

# Group :development, :test

This group includes gems that are useful for development and testing of the project. For example:

    debug: Gem to facilitate application debugging.

Group :development

This group contains gems specific to development but not necessary for testing. For example:

    annotate: Gem that adds comments to models and migrations to provide information about database columns.
    spring: Gem that speeds up commands on slow machines or big apps.

# Additional Notes

    It is recommended to review the official Ruby on Rails documentation for detailed information about the different gems used in the project.

    If you plan to implement user authentication, you may consider using the bcrypt gem for utilizing the has_secure_password method.

    The image_processing gem can be enabled if you plan to work with Active Storage to transform images.

    If you are developing on Windows, remember that the tzinfo-data gem is required to include timezone files that are not included by default on this operating system.

That's it! Now you have all the necessary information to run and develop this API Rest Backend in Ruby on Rails. Happy coding!
