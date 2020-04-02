require 'rails_helper'

RSpec.feature 'sign up', feature: :feature do
  scenario 'user navigates home and signs up' do
    visit '/'
    expect(page).to have_content("Sign Up")

    fill_in 'First name', with: 'John'
    fill_in 'Last name', with: 'Smith'
    fill_in 'Email', with: 'johnsmith@example.com'
    fill_in 'Password', with: 'password1'
    click_button 'Sign Up'

    expect(page).to have_content("Welcome to Postbox!")
  end
end
