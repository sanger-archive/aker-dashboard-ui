require 'rails_helper'

RSpec.describe "dashboard/index.html.erb", type: :view do
  describe "#index" do
    it "renders application summary partials" do
      render
      expect(response).to render_template :index
      expect(response).to render_template(partial: '_reception')
      expect(response).to render_template(partial: '_sets')
      expect(response).to render_template(partial: '_permissions')
      expect(response).to render_template(partial: '_projects')
      expect(response).to render_template(partial: '_work')
    end
  end
end
