Demo::Application.configure do
  config.lograge.enabled = true
  config.lograge.formatter = Lograge::Formatters::Logstash.new

  config.lograge.keep_original_rails_log = false
  config.lograge.logger = ActiveSupport::Logger.new(STDOUT)

  config.lograge.custom_options = lambda do |event|
    {
      host: event.payload[:host],
      remote_ip: event.payload[:remote_ip],
      origin: event.payload[:origin],
      uuid: event.payload[:uuid],
      type: 'request',
      params: event.payload[:params]
    }
  end

  # TODO:
  #
  # 1. sql
  # 2. exception
end
