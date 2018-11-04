RSpec.describe 'Posts page' do
  it "user can sign up and be logged in" do
    visit "/"
    fill_in "user_email", with: "test@yahoo.com"
    fill_in "user_password", with: "password"
    fill_in "user_password_confirmation", with: "password"
    click_button "Sign up"
    expect(page).to have_content("Logged in as test@gmail.com")
  end
end
