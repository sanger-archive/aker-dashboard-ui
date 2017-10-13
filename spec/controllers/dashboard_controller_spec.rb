require 'rails_helper'
require 'ostruct'
require 'jwt'

RSpec.describe DashboardController, type: :controller do
  let(:user) { OpenStruct.new(email: 'jeff', groups: ['world']) }
  let(:jwt) do
    iat = Time.now.to_i
    exp = iat + 5
    nbf = iat - 5
    payload = { data: { email: user.email, groups: user.groups }, exp: exp, nbf: nbf, iat: iat }
    JWT.encode payload, Rails.application.config.jwt_secret_key, 'HS256'
  end
  let(:login_url) { Rails.configuration.login_url+'?'+{redirect_url: request.original_url}.to_query }


  describe '#index' do
    context 'when no JWT is included' do
      it 'redirects to the login page' do
        get :index
        expect(response).to redirect_to(login_url)
      end
    end

    context 'when a JWT is included' do
      it 'renders the summary of applications' do
        request.cookies[:aker_user_jwt] = jwt
        get :index
        expect(response).to render_template "dashboard/index"
      end

    end
  end

end
