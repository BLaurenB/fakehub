require 'rails_helper'

feature "Unauthenticated user can login with Github" do
  scenario "with valid GitHub account" do
    stub_omniauth

    visit '/'
    click_on "Login with Github!"
    expect(current_path).to eq('/dashboard')
    expect(page).to have_content("BLaurenB")
    expect(page).to_not have_content("Login with Github!")

  end


end
