require 'rails_helper'

feature "Admin can see a list of posts" do

  let(:admin) { FactoryGirl.create(:user, admin: true) }
  let!(:user) { FactoryGirl.create(:user) }

  scenario "admin visits all goals page" do
    sign_in_as(admin)
    click_on "All Goals"

    expect(page).to have_content('All Goals')
  end

  scenario 'admin can create a new goal' do
    sign_in_as(admin)
    visit new_admin_goal_path

  end

  scenario 'unauthorized users are redirected' do
    sign_in_as(user)
    visit admin_goals_path

    expect(page).to have_content("not authorized")
    expect(current_path).to eq(root_path)
  end
end
