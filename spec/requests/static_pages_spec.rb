require 'rails_helper'

describe "Static pages" do
  describe "Home page", type: :feature do
    
    it "has the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "has the h1 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_selector('h1', text: 'Sample App')
    end

    it "has the title 'Home'"do
      visit '/static_pages/home'
      expect(page).to have_title("Home | Ruby on Rails Tutorial Sample App")
    end
  end

  describe "Help page", type: :feature do
    it "has the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "has the h1 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_selector('h1', text: 'Help')
    end

    it "has the title 'Help'"do
      visit '/static_pages/help'
      expect(page).to have_title("Help | Ruby on Rails Tutorial Sample App")
    end
  end

  describe "About page", type: :feature do
    it "has the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end

    it "has the h1 'About'" do
      visit '/static_pages/about'
      expect(page).to have_selector('h1', text: 'About')
    end

    it "has the title 'About'"do
      visit '/static_pages/about'
      expect(page).to have_title("About | Ruby on Rails Tutorial Sample App")
    end
  end
end
