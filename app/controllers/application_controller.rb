class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include JWTCredentials

  helper_method :jwt_provided?
  helper_method :current_user
end
