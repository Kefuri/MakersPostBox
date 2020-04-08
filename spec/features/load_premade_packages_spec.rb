require 'rails_helper'

RSpec.feature "Viewing packages", type: :feature do
  scenario "User loads the premade dogs page and sees a dog picture" do
    visit('/premade/dogs')
    find("img[src='https://bit.ly/2Jxd8tE']")
  end

  scenario "User loads the premade cats page and sees a cat picture" do
    visit('/premade/cats')
    find("img[src='https://images.unsplash.com/photo-1541781774459-bb2af2f05b55?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1942&q=80']")
  end

  scenario "User loads the premade scenery page and sees scenery picture" do
    visit('/premade/scenery')
    find("img[src='https://images.unsplash.com/photo-1472213984618-c79aaec7fef0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1378&q=80']")
  end

  scenario "User loads the premade messages page and sees message picture" do
    visit('/premade/messages')
    find("img[src='https://images.unsplash.com/photo-1583848697106-f0339cbb6ab2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=882&q=80']")
  end

  scenario "User loads the premade love page and sees love picture" do
    visit('/premade/love')
    find("img[src='https://images.unsplash.com/photo-1518568814500-bf0f8d125f46?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80']")
  end
end
