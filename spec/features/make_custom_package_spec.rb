require 'rails_helper'

RSpec.feature "Custom package creation", type: :feature do
  scenario "User loads the premade dogs page and clicks to make a custom package from it" do
    sign_up
    click_link("Dogs")
    click_link("Like this template? Click to make your package!")

    expect(page).to have_content("Create your custom package!")
  end

  scenario "User loads the premade cats page and clicks to make a custom package from it" do
    sign_up
    click_link("Cats")
    click_link("Like this template? Click to make your package!")

    expect(page).to have_content("Create your custom package!")
  end
  
  scenario "User loads the premade scenery page and clicks to make a custom package from it" do
    sign_up
    click_link("Scenery")
    click_link("Like this template? Click to make your package!")

    expect(page).to have_content("Create your custom package!")
  end

  scenario "User loads the premade messages page and clicks to make a custom package from it" do
    sign_up
    click_link("Messages")
    click_link("Like this template? Click to make your package!")

    expect(page).to have_content("Create your custom package!")
  end

  scenario "User loads the premade love page and clicks to make a custom package from it" do
    sign_up
    click_link("Love")
    click_link("Like this template? Click to make your package!")

    expect(page).to have_content("Create your custom package!")
  end
  
  scenario "User clicks a link on homepage to create a blank custom package" do
    sign_up
    click_link("Custom")
    
    expect(page).to have_content("This is a blank page... make it snazzy!")
  end
end
