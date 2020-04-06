require 'rails_helper'

RSpec.feature "Dogs", type: :feature do
  scenario "User loads premade dogs page which has a link to edit page" do
    # Can't edit page unless in session
    sign_up
    visit('/premade/dogs')
    click_link("Like this template? Click to make your package!")
    expect(page).to have_content("Edit your page below")
  end
  scenario "premade dogs page is editable and has link to share page" do
    # Can't edit page unless in session
    sign_up
    visit('/premade/dogs')
    click_link("Like this template? Click to make your package!")
    click_link("Wrap gift and share!")
    expect(page).to have_content("Welcome to your gift!")
  end
  scenario "shareable page has share button that copies the link" do
    # Can't edit page unless in session
    sign_up
    visit('/premade/dogs')
    click_link("Like this template? Click to make your package!")
    click_link("Wrap gift and share!")
    expect(page).to have_content("Share this page!")
    # click_link("Share this page")
    # TODO: go to page created, expect 200
  end
end

=begin
TODO:

- share button copies link

- can edit in premade editing page

- unique slugs for sharing page
- editing pages url (almost done)
- shared pages saved in db with the corresponding user id (for a history page later)
- refactor premade controller
- refactor share page
- make work for cats
- edit pages to make links more obvious

OTHER
- truncate tests
- youtube API for links
=end
