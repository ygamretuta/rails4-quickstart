#rails4-quickstart

## gems:
- high_voltage: https://github.com/thoughtbot/high_voltage
- devise: https://github.com/plataformatec/simple_form
- kaminari: https://github.com/amatsuda/kaminari

## editables for production

- *config/production.rb*

```ruby
config.action_mailer.default_url_options = {:host => 'mail-server-here'}
```

- *config/initializers/devise.rb*

```ruby
config.mailer_sender = 'your-website-email@yourwebsite.com'
```

- edit any model for the number of items displayed per page

```ruby
paginates_per 5
```
- or edit initializers/kaminari_config.rb for site-wide pagination configs

```ruby
config.default_per_page = 25
```


## deploy gotchas
### deploying for webfaction
- enable rubyracer

### deploying for heroku
- disable Capistrano
- disable rubyracer

