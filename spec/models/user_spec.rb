require 'rails_helper'

describe User do
  it "exists" do

   User.create(uid: "1234567", username: "Joe", token: "token1234")
   
    user = User.first
    expect(user).to be_a User 
    expect(user.uid).to eq("1234567") 
    expect(user.username).to eq("Joe") 
    expect(user.token).to eq("token1234") 
  end

end

