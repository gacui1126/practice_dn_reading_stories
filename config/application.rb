require_relative 'boot'

require 'rails/all'
Bundler.require(*Rails.groups)

module PracticeDnReadingStories
  class Application < Rails::Application
    config.load_defaults 6.0
    config.i18n.available_locales = [:en, :vn]
    config.i18n.default_locale = :en
  end
end
