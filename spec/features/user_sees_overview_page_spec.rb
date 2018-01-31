require 'rails_helper'

feature "When user visits FakeHub root" do
  scenario "they can log in and see their overview page" do

    # user = User.create(uid: "20262199", username: "BLaurenB", token: ENV["GITHUB_USER_TOKEN"])
    # allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit '/dashboard'

    expect(page).to have_content(user.name)
    # expect(page).to have_content(api_data.image)
    # expect(page).to have_content(api_data.public_repos)
    # expect(page).to have_content(api_data.followers)
    # expect(page).to have_content(api_data.following)


  end
end
