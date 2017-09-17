## Bloccit

Just like Reddit, Bloccit is an app where people can post, vote on, share and save links and comments.

This app powers Bloccit at https://fathomless-garden-68387.herokuapp.com

## Getting Started

## Software requirements
- Rails 5.1.2
- Ruby 2.4.0
- PostgreSQL 9.6.3

## Navigate to the Rails application

```
$ cd ~/code/bloccit
```
## Create the database

```
$ pgstart
$ rake db:create
```

## Migrating and seeding the database

```
$ rake db:migrate
$ rake db:seed
```

## Starting the local server

```
$ rails server

    or

$ rails s
```

## Production Deployment

```
$ git push heroku master
$ heroku run rake db:migrate
```

## Support

Bug reports and feature requests can be filed with the rest for the Ruby on Rails project here:
* [File Bug Reports and Features](https://github.com/summerlove91/bloccit/issues)

## License

Bloccit is released under the <LICENSE-NAME> license.

## Copyright

copyright:: (c) Copyright 2015 Bloccit. All Rights Reserved.
