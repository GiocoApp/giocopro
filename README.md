![Alt text](http://joaomdmoura.github.io/gioco/assets/images/logo.png "A gamification gem for Ruby on Rails applications")

# Gioco Pro (current version - 0.0.1)
Gioco Pro gem is the SDK of Gioco Pro service for **Rails Applications**.
A easy way to implement gamification based on plug and play concept. Doesn't matter if you already have a full and functional database, Gioco will smoothly integrate everything and provide all methods and analytics that you might need.

## Installation

**Gioco Pro** is available through [Rubygems](http://rubygems.org/gems/giocopro) and can be installed by:

adding it in Gemfile:

```ruby
gem 'giocopro'
```

and running the bundler:

    $ bundle install

## Setup

**To setup Gioco with your application:**

    rails g giocopro:setup

Next, you will be prompted to provide your **Resource Model**. This is generally the **User** model.

After install the GiocoPro gem we strongly recommend you to set an environment variable ```GIOCO_PRO_TOKEN``` for you [Application Token](http://app.gioco.pro), you can find it on ```Manage > Application Token```.

# Usage

Gioco will bind some method to your **Resource Model**, it will enable you to easily retrieve and track your users data inside your application.

## Resource

### Get User data
**gioco_data**

Examples:
    
```ruby
current_user.gioco_data
```
```json
 # RESPONSE:
  {
    "aid" => 25,
    "badges" => [],
    "level" => nil,
    "new_stats" => nil,
    "points" => 0
  }
```

## Events

### Tracking Events
**track_event** *(events_name: ```String```)*

Examples:

```ruby
current_user.track_event('Login')
```
```json
 # RESPONSE:
  {
    "aid" => 25,
    "badges" => [
    "image_url" => "http://image_url.png",
    "name" => "Begginer"
    "level" => 1,
    "points" => 100,
    "new_stats" => [  #It is an array of objects with the new implementations that resource just won
    {
      "badge" => {
        "image_url" => "http://image_url.png",
        "name" => "Begginer"
      }
    }
    {
      "point" => {
        "name" => "Test Points",
        "points" => 100
      }
    }
    {
      "level" => {
        "levels" => 1
      }
    }
  }
```

# License

**Gioco** is released under the [MIT license](www.opensource.org/licenses/MIT).
