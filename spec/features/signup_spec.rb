require 'rails_helper'

feature 'signup' do
  scenario 'user signs up with valid credentials' do
    visit '/'
    click_link 'Signup'
    fill_in 'Email', with: "user@example.com"
    fill_in 'Password', with: "testpassword123"
    fill_in 'Password confirmation', with: "testpassword123"
    click_button 'Sign up'
    expect(page).to have_content("Welcome to RubyJobs")
  end
end
