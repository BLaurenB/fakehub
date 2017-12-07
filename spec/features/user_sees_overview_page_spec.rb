require 'rails_helper'

feature "When user visits FakeHub root" do
  scenario "they can log in and see their overview page" do

    user = create(:user, token: ENV["GITHUB_USER_TOKEN"])
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    user_data = {
                name: "BLaurenB",
                image: "https://avatars0.githubusercontent.com/u/20262199?v=4",
                public_repos: 38,
                followers: 0,
                following: 1
              }

    hub_user = HubUser.new(user_data)

    visit '/dashboard'
    # save_and_open_page
    expect(page).to have_content(hub_user.name)
    expect(page).to have_content(hub_user.image)
    expect(page).to have_content(hub_user.public_repos)
    expect(page).to have_content(hub_user.followers)
    expect(page).to have_content(hub_user.following)


  end
end
