require 'rails_helper'

feature 'Create Advertisment' do
  scenario 'A user creates an advertisment with valid inputs' do
    visit 'advertisments/new'
    # save_and_open_page
    fill_in 'Company', with: "Inspire 9"
    fill_in 'Job title', with: "Awesome Developer"
    fill_in 'Location', with: "Kings Landing"
    click_button 'Create Advertisment'
    expect(page).to have_content("Awesome Developer")
    expect(page).to have_content("Your Advertisment was created")
  end
end
