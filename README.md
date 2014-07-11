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

# Usage

## Badge

### Adding Badges
**add_badge** *(badges_name: String, user_unique_id: Integer, badges_image_path: String)*

Examples:

    g = GiocoPro.new
    g.add_badge('Begginer', current_user.id, 'http://badge_url.jpg')

The *badge_url* parameter is optional, the image must be smaller then 300x300.

### Removing Badges
**remove_badge** *(badges_id: Integer, user_unique_id: Integer)*

Example:

    g = GiocoPro.new
    g.remove_badge(1, current_user.id)

## Points

### Adding Points
**add_points** *(points: Integer, user_unique_id: Integer)*

Examples:

    g = GiocoPro.new
    g.add_points(100, current_user.id)

### Removing Points
**remove_points** *(points: Integer, user_unique_id: Integer)*

Example:

    g = GiocoPro.new
    g.remove_points(100, current_user.id)

## Level

### Adding Levels
**add_level** *(levels: Integer, user_unique_id: Integer)*

Examples:

    g = GiocoPro.new
    g.add_level(1, current_user.id)

### Removing Levels
**remove_level** *(levels: Integer, user_unique_id: Integer)*

Example:

    g = GiocoPro.new
    g.remove_level(1, current_user.id)

## Resource

### Get Levels
**get_resource** *(user_unique_id: Integer)*

Examples:

    g = GiocoPro.new
    g.get_resource(current_user.id)

# License

**Gioco** is released under the [MIT license](www.opensource.org/licenses/MIT).