require 'rails_helper'

feature "When user visits FakeHub root" do
  scenario "they can log in and see their overview page" do

    user = create(:user, token: ENV["GITHUB_USER_TOKEN"])
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit '/dashboard'

    var = JSON.parse(response.body) #this is if I'm getting JSON back. WHat I want is to get JSON and then display the JSON, so I need to do something like current_user. but it current_user the db or the session, or all? do I need to have 2 separate variables for a logged-in user? Think if some other person was logging into my clone.


    expect(page).to have_content(user.username)
    expect(page).to have_content(user.image)
    expect(page).to have_content(user.fullname)
    expect(page).to have_content(user.repos)
    expect(page).to have_content(user.stars)
    expect(page).to have_content(user.followers)
    expect(page).to have_content(user.followed)
    expect(page).to have_content(user.bio)
    expect(page).to have_content(user.location)
    expect(page).to have_content(user.email)


  end
end
