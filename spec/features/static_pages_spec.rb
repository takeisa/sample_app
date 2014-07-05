require 'rails_helper'

feature "StaticPages" do
  feature "Home page" do
    scenario "right title" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
    end

    scenario "right content" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
  end

  feature "Help page" do
    scenario "right title" do
      visit "/static_pages/help"
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end

    scenario "right content" do
      visit "/static_pages/help"
      expect(page).to have_content('Help')
    end
  end

  feature "About page" do
    scenario "right title" do
      visit "/static_pages/about"
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end

    scenario "right content" do
      visit "/static_pages/about"
      expect(page).to have_content('About Us')
    end
  end
end
