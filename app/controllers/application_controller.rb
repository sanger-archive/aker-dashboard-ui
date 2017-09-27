class ApplicationController < ActionController::Base
  include JWTCredentials

  helper_method :jwt_provided?
end
