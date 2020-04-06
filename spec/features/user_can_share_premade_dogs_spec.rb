require 'rails_helper'

RSpec.feature "Dogs", type: :feature do
  scenario "User loads premade dogs page which has a link to edit page" do
    # Can't edit page unless in session
    sign_up
    p @user
    visit('/premade/dogs')
    click_link("Like this template? Click to make your package!")
    expect(page).to have_content("Edit your page below")
  end
end
