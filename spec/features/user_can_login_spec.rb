require 'rails_helper'

feature "Unauthenticated user can login with Github" do
  before do
    stub_omniauth
  end 

  scenario  "using a valid GitHub account" do
    VCR.use_cassette("user_views_overview_page") do
      visit '/'
      click_on "Login with Github!"
      expect(current_path).to eq("/#{User.last.username}")
    end 
  end 

  # it "they can see their overview page" do
  #   VCR.use_cassette("user_views_overview_page") do
    
  #     expect(page).to_not have_content("Login with Github!")
                
  #     expect(page).to have_content("BlaurenB")
  #     expect(page).to have_content("Repositories:28")
  #     expect(page).to have_content("Following:1")
    
  #   end 
  # end 

end
