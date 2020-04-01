require 'rails_helper'

RSpec.feature "Dogs premade package", type: :feature do
  scenario 'can be accessed from home page and has link back to home' do
    visit '/home/index'
    click_link('Dogs')
    expect(page).to have_content("Here are your cute dog pics!")
    click_link('Back to package selection')
    expect(page).to have_content("Choose from the following options:")
  end
end