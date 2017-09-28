require 'rails_helper'
require 'ostruct'

RSpec.describe DashboardController, type: :controller do

  describe '#index' do
    context 'when no JWT is included' do
      it 'redirects to the login page' do
        get :index
        expect(response).to redirect_to(Rails.configuration.login_url)
      end
    end

    context 'when a JWT is included' do
      let(:user) { OpenStruct.new(email: 'jeff', groups: ['world']) }

      setup do
        allow_any_instance_of(DashboardController).to receive(:current_user).and_return(user)
      end
      it 'renders the summary of applications' do
        get :index, params: {}
        expect(response).to render_template "dashboard/index"
      end

    end
  end

end
