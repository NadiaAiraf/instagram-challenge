def sign_up_1
  visit "/users/sign_up"
  fill_in "user[email]", with: "test@gmail.com"
  fill_in "user[password]", with: "password"
  fill_in "user[password_confirmation]", with: "password"
  click_button "Sign up"
end

def upload_photo
  visit '/posts/new'
  fill_in 'post[messages]', with: 'this is a test image'
  attach_file('post[image]', Rails.root + "spec/fixtures/test_image.jpg")
  click_button 'Gram it!'
end
