require 'rails_helper'

RSpec.feature 'sign up', feature: :feature do
  scenario 'user navigates home and signs up' do
    sign_up
    expect(page).to have_content("Welcome to Postbox!")
  end

  scenario 'user sees a sign up successful message upon signing up' do
    sign_up("Hay", "Don", "hay@example.com", "passw0rd")
    expect(page).to have_current_path('/home/index')
    expect(page).to have_content('Sign Up Successful!')
    visit('/home/index')
    expect(page).not_to have_content('Sign Up Successful!')
  end

  scenario "user sees an error message when using a password that is too short" do
    sign_up("Peepo", 'Osu', "peepoosu@example.com", "YES")
    expect(page).to have_content('is too short (minimum is 6 characters)')
  end

  scenario "user sees an error message when using a password too long" do
    sign_up("Peepo", 'Osu', "peepoosu@example.com", "YESSSSSSSSSSSSSSSSSSSSIR")
    expect(page).to have_content("is too long (maximum is 20 characters)")
  end
end
