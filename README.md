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

## Usage

### Badge

#### Adding Badges

Examples:

    g = GiocoPro.new
    g.add_badge('Begginer', user.id)

#### Removing Badges

Example:

    g = GiocoPro.new
    g.remove_badge(1, user.id)

    g = GiocoPro.new
    g.add_points(100,1)

    g = GiocoPro.new
    g.remove_points(100,1)

    g = GiocoPro.new
    g.add_level(1,1)

    g = GiocoPro.new
    g.remove_level(1,1)

    g = GiocoPro.new
    g.get_resource(1)

## License

**Gioco** is released under the [MIT license](www.opensource.org/licenses/MIT).