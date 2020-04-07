require 'rails_helper'

RSpec.feature "Dogs", type: :feature do
  scenario "User loads premade dogs page which has a link to edit page" do
    # Can't edit page unless in session
    sign_up
    click_link("Custom")
    expect(page).to have_content("This is a blank page... make it snazzy!")
  end
end