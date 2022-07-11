require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ChatApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    config.i18n.default_locale = :ja
    #コンソールで"Name translation missing: ja.activerecord.errors.models.user.attributes.name.blank"
    #が出るのは、config.i18n.default_locale = :ja の記述があるため
    config.time_zone = 'Tokyo'
    #不要なファイルを生成しないようにする設定
    config.generators do |g|
      g.stylesheets false
      g.javascripts false
      g.helper false
      g.test_framework false
    end
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in cexitonfig/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
