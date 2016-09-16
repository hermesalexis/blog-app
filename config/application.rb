require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BlogApp
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    I18n.available_locales = [:en, :es]
    config.time_zone = 'Bogota' # set default time zone to "Bogota" (UTC +4)
    config.i18n.default_locale = :es# set default locale to es
  end
end
