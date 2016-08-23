# SipTrip [<img src="https://travis-ci.org/DBC-Huskies/flight-app.svg?branch=master" alt="Build Status" />](https://travis-ci.org/DBC-Huskies/flight-app)

With a back-end built on Ruby on Rails and using PostgreSQL, SipTrip is a web app for curating "flights" of local businesses centered around a user's beverage preference. With jQuery and AJAX the interface and flight results are updated in a single page. Use of the Geocoder and BCrypts gems and Google Maps and Places APIs makes for a technically robust user experience in mapping out their adventure.

The first production MVP of SipTrip was completed in one week.

## Team

[Anya Krupp](www.github.com/cherchezlafemme)
[Andrew Peterson](www.github.com/ajpeterson)
[Jacob Rapp](https://github.com/J-Rapp)

## Deployment

SipTrip is deployed on Heroku

* [Production](https://sip-trip.herokuapp.com)

## Tech specs

* Ruby on Rails
* PostgreSQL
* RSpec
* SimpleCov
* JavaScript (jQuery, AJAX)
* SASS
* Continuous integration with Travis CI
* Bcrypt gem for user authentication
* Geocoder gem for generating coordinates
* Google Maps and Places APIs

## Git Workflow

0. Working on your local feature branch and ready to push
1. $ git fetch origin test-master
2. $ git merge origin/test-master
3. Resolve any conflicts
4. Test the application locally
5. $ git push origin feature-branch
6. Create a pull request on github
7. Wait for another member of the team to merge pull request

## Development Environment

Remember to create your .env file locally otherwise you will not be able to access Google APIs.

* Create a .env file in the root of the project
* Add the line MAP_KEY=your-google-api-key

