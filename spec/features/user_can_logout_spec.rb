require 'rails_helper'

feature "Authenticated user can logout" do
  before do
    stub_omniauth
  end

  scenario "When logged in" do
    VCR.use_cassette("user_views_overview_page") do
      visit '/'
      click_on "Login with Github!"
      expect(current_path).to eq("/#{User.last.username}")

      click_on "Logout"
      expect(current_path).to eq('/')
    end 
  end


end
