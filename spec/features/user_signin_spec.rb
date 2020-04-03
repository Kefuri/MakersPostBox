require 'rails_helper'

RSpec.feature 'sign in', feature: :feature do
  scenario 'user signs up then logs out' do
    sign_up
    click_link('Sign out')
    sign_in
    expect(page).to have_content("Welcome back, John!")
  end
  # TODO : user signs in then logs out
end
