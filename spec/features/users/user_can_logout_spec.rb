require 'rails_helper'

describe "Registered user is logged in" do
    context "they click logout link" do
        it "logs out the user and clears the session" do
          user = User.create(username: "1244", password: "1234")

          visit root_path

          click_on "Login"

          fill_in "username", with: user.username
          fill_in "password", with: user.password
          click_on "Sign In"

          click_on "Log Out"

          expect(current_path).to eq(root_path)
          expect(page).to have_content("Login")
          expect(page).to_not have_content("Log Out")
    end
  end
end
