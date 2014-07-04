require 'spec_helper'

describe PagesController do
  render_views
  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end

    it "should have the right title 'Home'" do
      visit '/pages/home'
      expect(page).to have_title('Home')
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end

    it "should have the right title 'Home'" do
      visit '/pages/contact'
      expect(page).to have_title('Contact')
    end

  end

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end

    it "should have the right title 'Home'" do
      visit '/pages/about'
      expect(page).to have_title('About')
    end

  end

end

