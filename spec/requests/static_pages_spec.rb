require 'spec_helper'

describe "Static Pages" do

	let(:base_title){"Ruby on Rails Tutorial Sample Application"}
	
	subject {page}

	describe "Home page" do
		before {visit root_path}
		it {should have_selector('h1' , text: 'Super_exa_app')}
		it {should have_selector('title' , text: full_title(''))}
	end

	describe "Help page" do
		before {visit help_path}
		it {should have_selector('h1' , text: 'Help')}
		it {should have_selector('title' , text: full_title('Help'))}
	end

	describe "About page" do
		before {visit about_path}
		it {should have_selector('h1' , text: 'About us')}
		it {should have_selector('title' , text: full_title('About us'))}
	end

	describe "Contact page" do
		before {visit contact_path}
		it {should have_selector('h1' , text: 'Contact')}
		it {should have_selector('title' , text: full_title('Contact us'))}
	end

end
