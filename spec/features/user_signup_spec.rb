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

  scenario 'user sees a sign up successful message upon signing up' do
    visit '/'
    expect(page).to have_content("Sign Up")
    fill_in 'First name', with: "Adam"
    fill_in 'Last name', with: "Sandler"
    fill_in 'Email', with: 'AdamSandler@example.com' 
    fill_in 'Password', with: 'GrownUps12'
    click_button 'Sign Up'
    expect(page).to have_current_path('/home/index')
    expect(page).to have_content('Sign Up Successful!')
    visit('/home/index')
    expect(page).not_to have_content('Sign Up Successful!')
  end

  scenario "user sees an error message when using a password that is too short" do
    visit '/'
    fill_in 'First name', with: "Peppy"
    fill_in 'Last name', with: "Osu"
    fill_in 'Email', with: "PEEPOPOG@example.com"
    fill_in 'Password', with: "YES"
    click_button 'Sign Up'
    expect(page).to have_content('is too short (minimum is 6 characters)')
  end
end
