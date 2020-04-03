require 'rails_helper'

RSpec.feature 'sign in', feature: :feature do
  scenario 'user signs up then logs out, then logs in' do
    sign_up
    click_link('Sign out')
    sign_in
    expect(page).to have_content("Welcome back, John!")
  end
  scenario 'user signs up then logs out then logs in with wrong combo' do
    sign_up
    click_link('Sign out')
    sign_in(password = "passwfkdsjrd")
    expect(page).to have_content("Invalid email/password combination")
  end
end
