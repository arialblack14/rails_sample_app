require 'rails_helper'

describe "Static pages" do
  describe "Home page", type: :feature do
    before :each do
      visit root_path
    end

    it "has the content 'Sample App'" do
      expect(page).to have_content('Sample App')
    end

    it "has the h1 'Sample App'" do
      expect(page).to have_selector('h1', text: 'Sample App')
    end

    it "has the title 'Home'"do
      expect(page).to have_title("Home | Ruby on Rails Tutorial Sample App")
    end
  end

  describe "Help page", type: :feature do
    before :each do
      visit help_path
    end
    it "has the content 'Help'" do
      expect(page).to have_content('Help')
    end

     it "has the h1 'Help'" do
       expect(page).to have_selector('h1', text: 'Help')
     end

     it "has the title 'Help'"do
       expect(page).to have_title("Help | Ruby on Rails Tutorial Sample App")
     end
   end

    describe "About page", type: :feature do
      before :each do
        visit about_path
      end
      it "has the content 'About'" do
        expect(page).to have_content('About')
      end

      it "has the h1 'About'" do
        expect(page).to have_selector('h1', text: 'About')
      end

      it "has the title 'About'"do
        expect(page).to have_title("About | Ruby on Rails Tutorial Sample App")
      end
    end

    describe "Contact page", type: :feature do
      before :each do
        visit contact_path
      end
      it "has the content 'Contact'" do
        expect(page).to have_content('Contact')
      end

      it "has the h1 'Contact'" do
        expect(page).to have_selector('h1', text: 'Contact')
      end

      it "has the title 'Contact'" do
        expect(page).to have_title("Contact | Ruby on Rails Tutorial Sample App")
      end
    end
  end
