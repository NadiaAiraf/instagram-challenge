RSpec.describe 'Posts page' do
  it "user can sign up and be logged in" do
    sign_up_1
    expect(page).to have_content("Logged in as test@gmail.com")
  end
end
