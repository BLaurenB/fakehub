require 'rails_helper'

scenario "When user visits FakerHub root" do
  describe "they can log in and see their overview page" do

    user = create(:user)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
    
    visit '/'
    expect(page).to have_content(

  end
end
