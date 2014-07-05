require 'rails_helper'

feature "StaticPages" do
  scenario "User show home pages" do
    visit '/static_pages/home'
    expect(page).to have_content('Sample App')
  end

  scenario "User show help page" do
    visit "/static_pages/help"
    expect(page).to have_content('Help')
  end

  scenario "User show about page" do
    visit "/static_pages/about"
    expect(page).to have_content('About Us')
  end
end
