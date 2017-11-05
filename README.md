# AddAvatar

This is an extension adding Avatar association to chosen models.

## Installation

1. Add this extension to your Gemfile with this line:
  ```ruby
  gem 'add_avatar', github: 'konada/add_avatar'
  ```

2. Install the gem using Bundler:
  ```ruby
  bundle install
  ```

3. Copy & run migrations
  ```ruby
  bin/rails add_avatar:install:migrations
  bundle exec rake db:migrate
  ```

## License

This project rocks and uses MIT-LICENSE.
