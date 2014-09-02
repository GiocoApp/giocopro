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
    
```rubycurrent_user.gioco_data

 RESPONSE:
 {
    "resource"=>
        {
            "id"=>1547, 
            "aid"=>3, 
            "created_at"=>"2014-09-02T11:10:35.170Z", 
            "updated_at"=>"2014-09-02T11:10:35.170Z", 
            "user_application_id"=>3
        }, 
    "new_info"=>nil
 }
```

## Events

### Tracking Events
**track_event** *(events_name: ```String```)*

Examples:

```rubycurrent_user.track_event('Login')

 RESPONSE:
 {
    "resource"=>
        {
            "id"=>1547, 
            "aid"=>3, 
            "created_at"=>"2014-09-02T11:10:35.170Z", 
            "updated_at"=>"2014-09-02T11:10:35.170Z", 
            "user_application_id"=>3,
            "badges"=> [
                   {
                       "name"=>"Begginer",
                       "image_url"=>"http://giocopro.s3.amazonaws.com/2014/08/26/07/32/53/772/begginer_badge_image.jpg"
                   }
               ]
        }, 
   "new_info"=> 
        [
            {
                badge: 
                    {
                        "id"=>8,
                        "name"=>"Begginer",
                        "created_at"=>"2014-08-29T05:14:09.107Z",
                        "updated_at"=>"2014-09-02T03:01:08.256Z",
                        "user_application_id"=>2,
                        "image_uid"=>"2014/08/29/05/14/08/969/logo_white.png",
                        "image_name"=>"logo-white.png",
                        "resources_number"=>610   
                    }
            }
        ]
 }
```

# License

**Gioco** is released under the [MIT license](www.opensource.org/licenses/MIT).
