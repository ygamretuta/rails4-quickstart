#rails4-quickstart

## gems:
- high_voltage: https://github.com/thoughtbot/high_voltage
- devise: https://github.com/plataformatec/simple_form

## editables for production

- *config/production.rb*

    config.action_mailer.default_url_options = {:host => 'mail-server-here'}

- *config/initializers/devise.rb*

    config.mailer_sender = 'your-website-email@yourwebsite.com'
