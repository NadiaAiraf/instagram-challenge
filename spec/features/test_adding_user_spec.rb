RSpec.describe 'Posts page' do
  it "user can sign up and be logged in" do
    sign_up_1
    expect(page).to have_content("Logged in as test@gmail.com")
  end

  it "Once signed up, a user can log out then log in again" do
    sign_up_1
    click_link 'Logout'
    expect(page).to have_content('You need to sign in or sign up before continuing.')
    fill_in 'user[email]', with: "test@gmail.com"
    fill_in 'user[password]', with: "password"
    click_button 'Log in'
    expect(page).to have_content("Logged in as test@gmail.com")
  end
end
