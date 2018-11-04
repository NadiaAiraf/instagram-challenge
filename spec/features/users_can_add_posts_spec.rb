RSpec.describe 'Posts page' do
  it "user can sign up and be logged in" do
    sign_up_1
    upload_photo
  end

  it "the post has a link to the image" do
    sign_up_1
    upload_photo
    find('#photo1').click
    expect(page).to have_content('this is a test image')
  end
end
