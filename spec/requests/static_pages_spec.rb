require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
	it "should have the right title" do
		visit '/static_pages/home'
		page.should have_selector('title', :text => "Sample App | Home")
	end
  
	it "should have the content 'Sample App'" do
		visit '/static_pages/home'
		page.should have_content('Sample App')
	end
  end

  describe "Help page" do
  	it "should have the right title" do
		visit '/static_pages/help'
		page.should have_selector('title', :text => "Sample App | Help")
	end
	
	it "should have the content 'Sample App - Help'" do
		visit '/static_pages/help'
		page.should have_content('Sample App - Help')
	end
  end
  
  describe "About page" do
  	it "should have the right title" do
		visit '/static_pages/about'
		page.should have_selector('title', :text => "Sample App | About")
	end
	
	it "should have the content 'Sample App - About'" do
		visit '/static_pages/about'
		page.should have_content('Sample App - About')
	end
  end
  
end
