class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # TODO: FIXME:
  # rails 5 change the way to culculate ip
  # https://github.com/rails/rails/blob/5-0-stable/actionpack/lib/action_dispatch/middleware/remote_ip.rb
  def append_info_to_payload(payload)
    super
    payload[:host] = "asdfasdf"# request.host
    payload[:host] = request.host
    payload[:remote_ip] = request.remote_ip
    payload[:origin] = request.headers['HTTP_ORIGIN'] rescue '' + request.headers['ORIGINAL_FULLPATH']
    payload[:uuid] =  request.uuid
    payload[:browser] = "#{browser.name} #{browser.full_version}"
    payload[:user_agent] = request.headers['HTTP_USER_AGENT']
  end
end
