require 'rails_helper'

RSpec.feature 'sign up', feature: :feature do
  scenario 'user navigates home and signs up' do
    visit '/'
    expect(page).to have_content("Sign Up")

    fill_in 'first_name', with: 'John'
    fill_in 'last_name', with: 'Smith'
    fill_in 'email', with: 'johnsmith@example.com'
    fill_in 'password', with: 'password1'
    click_button 'Sign Up'

    # expect(page).to have_content("Welcome John")
  end
end
