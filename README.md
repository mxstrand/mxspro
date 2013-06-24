### This is a rails app designed for production deployment to Heroku.
![Rails Logo](https://raw.github.com/mxstrand/mxspro/master/app/assets/images/rails.png "Rails Logo")
------

As per the Gemfile, the more interesting gems involved are:

* twitter-bootstrap-rails (formatting)
* devise (user acocunts/authentication)
* omniauth-twitter (twitter account authentication)
* httparty (API calls)
* brakeman (security checker)
* pg (production database)
* thin (development web server)
* unicorn (production web server)

Other notes:
* when forking, you'll want to create a config/application.yml file and include your ENV variables such as:  ESPN_API_KEY, SECRET_TOKEN, TWITTER_CONSUMER_KEY, and TWITTER_CONSUMER_SECRET.


To learn about .yml files, see a simple tutorial at railscasts.com/episodes/85-yaml-configuration-revised

Thanks for the help with the markdown via:
https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet

Honorable mention to the following open source playas who helped me along the way:

* https://github.com/eeelmer
* https://github.com/ivanoats
* https://github.com/lostincode
* https://github.com/Codingrecipes
* https://github.com/johnbeynon
