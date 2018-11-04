def sign_up_1
  visit "/users/sign_up"
  fill_in "user[email]", with: "test@gmail.com"
  fill_in "user[password]", with: "password"
  fill_in "user[password_confirmation]", with: "password"
  click_button "Sign up"
end
