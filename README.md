![Alt text](http://joaomdmoura.github.io/gioco/assets/images/logo.png "A gamification gem for Ruby on Rails applications")

# Gioco Pro (current version - 0.0.1)
Gioco Pro gem is the SDK of Gioco Pro service a easy way to implement gamification based on plug and play concept. Doesn't matter if you already have a full and functional database, Gioco will smoothly integrate everything and provide all methods and analytics that you might need.

## Installation

**Gioco Pro** is available through [Rubygems](http://rubygems.org/gems/giocopro) and can be installed by:

adding it in Gemfile:

```ruby
gem 'giocopro'
```

and running the bundler:

    $ bundle install

# Setup

After install the GiocoPro gem ew strongly recommend you to set an environment variable ```GIOCO_PRO_TOKEN``` for you [Application Token](http://app.gioco.pro), you can find it on ```Manage > Application Token```.

If you can't set an environment variable you can also pass it as an argument when instanciating Gioco.

    g = GiocoPro.new('token')

# Usage

## Resource

### Get Resource
**get_resource** *(user_unique_id: ```Integer```)*

Examples:

    g = GiocoPro.new
    g.get_resource(current_user.id)



## Events

### Tracking Badges
**track_event** *(events_name: ```String```, user_unique_id: ```Integer```)*

Examples:

    g = GiocoPro.new
    g.track_event('Login', current_user.id)

# License

**Gioco** is released under the [MIT license](www.opensource.org/licenses/MIT).
