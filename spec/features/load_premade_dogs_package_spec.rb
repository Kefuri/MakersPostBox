require 'rails_helper'

RSpec.feature "Dogs", type: :feature do
  scenario "User loads the page and sees dog pictures" do
    sign_up
    visit('/premade/dogs')
    find("img[src='https://bit.ly/2Jxd8tE']")
  end
end
