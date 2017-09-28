require 'rails_helper'

RSpec.describe "dashboard/index.html.erb", type: :view do
  describe "dashboard/index.html.erb" do
    it "renders application summary partials" do
      render
      expect(response).to render_template :index
      expect(response).to render_template(partial: '_submission')
      expect(response).to render_template(partial: '_sets')
      expect(response).to render_template(partial: '_permissions')
      expect(response).to render_template(partial: '_projects')
      expect(response).to render_template(partial: '_work_orders')
    end
  end
end
