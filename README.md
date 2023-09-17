# README

Look at .ruby-version in the Rails application directory
Find something like ruby '2.5.3' in Gemfile
FindRUBY VERSION in Gemfile.lock
Install Bundler using Gem
```bundle install```
```bundle e rails db:setup``` *If using other db. I am using sqlite.
```bundle e rails s```

# Resource for setup
- https://medium.com/@dyanagi/how-to-run-an-existing-ruby-on-rails-project-after-cloning-a-repository-8535e4f14bc9

# Environment
- Find app/environments/development.rb
- Use details below for email configuration. Example below used in Mailtrap
    """
        config.action_mailer.delivery_method = :smtp
        config.action_mailer.smtp_settings = {
            :user_name => 'd4d4292a2d811e',
            :password => '51b1563ea1d262',
            :address => 'sandbox.smtp.mailtrap.io',
            :host => 'sandbox.smtp.mailtrap.io',
            :port => '2525',
            :authentication => :cram_md5
        }
    """

# Install Rails
- Please see link https://gorails.com/setup/windows/10#overview