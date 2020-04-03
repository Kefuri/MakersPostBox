require 'rails_helper'

RSpec.feature 'log out', feature: :feature do
  scenario 'user signs up then logs out' do
    sign_up
    expect(page).to have_content("Welcome to Postbox!")
    click_link('Dogs')
    click_link('Sign out')
    expect(page).to have_content("You have logged out")
  end
end
