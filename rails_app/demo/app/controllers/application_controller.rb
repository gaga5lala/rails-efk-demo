class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

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
