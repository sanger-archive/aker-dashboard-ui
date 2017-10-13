class ApplicationController < ActionController::Base
  include JWTCredentials

  helper_method :current_user

end
