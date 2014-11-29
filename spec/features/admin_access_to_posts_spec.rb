require 'rails_helper'

feature "Admin can see a list of posts" do

  let(:admin) { FactoryGirl.create(:user, admin: true) }
  let!(:user) { FactoryGirl.create(:user) }

  scenario "admin visits all posts index" do
    sign_in_as(admin)
    click_on "All Posts"

    expect(page).to have_content('All Posts')
  end

  scenario 'unauthorized users are redirected' do
    sign_in_as(user)
    visit admin_posts_path

    expect(page).to have_content("not authorized")
    expect(current_path).to eq(root_path)
  end
end
