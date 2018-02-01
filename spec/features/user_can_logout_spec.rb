require 'rails_helper'

feature "Authenticated user can logout" do
  
  scenario "When logged in" do
    stub_omniauth

    visit '/'
    click_on "Login with Github!"
    expect(current_path).to eq("/#{User.last.username}")

    click_on "Logout"
    expect(current_path).to eq('/')     

  end


end
