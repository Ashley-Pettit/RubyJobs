require 'rails_helper'

feature 'Create Advertisment' do
  scenario 'A user creates an advertisment with valid inputs' do
    visit 'advertisments/new'
    # click_link 'Signup'
    # fill_in 'Email', with: "user@example.com"
    # fill_in 'Password', with: "testpassword123"
    # click_button 'Sign up'
    # expect(page).to have_content("Welcome to RubyJobs")
  end
end
