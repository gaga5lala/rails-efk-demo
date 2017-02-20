Demo::Application.configure do
  config.lograge.enabled = true

  config.lograge.keep_original_rails_log = false
  config.lograge.logger = ActiveSupport::Logger.new(STDOUT)
end
