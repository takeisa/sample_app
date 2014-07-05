require 'spec_helper'

RSpec.describe "StaticPages", :type => :request do
  # describe "GET /static_pages" do
  #   it "works! (now write some real specs)" do
  #     get static_pages_index_path
  #     expect(response.status).to be(200)
  #   end
  # end

  describe "Home pages" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit "/static_pages/help"
      expect(page).to have_content('Help')
    end
  end
end