require "rails_helper"

RSpec.describe "rendering navlinks" do
  it "has links to the applications" do
    render :partial => "application/navlinks.html.erb"
    expect(response).to have_link("Submission", href: Rails.configuration.submission_url)
    expect(response).to have_link("Sets", href: Rails.configuration.set_shaper_url)
    expect(response).to have_link("Permissions", href: Rails.configuration.stamps_ui_url)
    expect(response).to have_link("Projects", href: Rails.configuration.study_management_url)
    expect(rendered).to have_link("Work Orders", href: Rails.configuration.work_orders_url)
  end
end