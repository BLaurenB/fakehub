require 'rails_helper'

feature "When user visits FakeHub root" do
  scenario "they can log in and see their overview page" do

    user = create(:user, token: ENV["GITHUB_USER_TOKEN"])
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit '/'

    #change this to check for a specific location within the page


  end
end
