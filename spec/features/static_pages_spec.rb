require 'rails_helper'

feature "StaticPages" do
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  feature "Home page" do
    scenario "right title" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title} | Home")
    end

    scenario "right content" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
  end

  feature "Help page" do
    scenario "right title" do
      visit "/static_pages/help"
      expect(page).to have_title("#{base_title} | Help")
    end

    scenario "right content" do
      visit "/static_pages/help"
      expect(page).to have_content('Help')
    end
  end

  feature "About page" do
    scenario "right title" do
      visit "/static_pages/about"
      expect(page).to have_title("#{base_title} | About Us")
    end

    scenario "right content" do
      visit "/static_pages/about"
      expect(page).to have_content('About Us')
    end
  end

  feature "Contact page" do
    scenario "right title" do
      visit "/static_pages/contact"
      expect(page).to have_title("#{base_title} | Contact")
    end

    scenario "right content" do
      visit "/static_pages/contact"
      expect(page).to have_content('Contact')
    end
  end
end
