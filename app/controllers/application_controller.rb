class ApplicationController < ActionController::Base

  include JWTCredentials

  before_action :check_user_signed_in
  helper_method :current_user

  private

  def check_user_signed_in
    redirect_to Rails.configuration.login_url unless current_user
  end
end
