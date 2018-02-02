require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AnalysisOfLifts2
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    config.generators.system_tests = nil
    config.i18n.default_locale = :pl
    config.autoload_paths += %W(#{config.root}/lib)
  end
end
