require 'rails_helper'

RSpec.describe 'Home Index Page', type: :system do
  it 'shows the index page' do
    visit root_path
    expect(page).to have_content('PocketPal')
  end

  it 'should redirect to login page' do
    visit root_path
    click_link 'LOG IN'
    expect(page).to have_current_path(new_user_session_path)
  end

  it 'should redirect to signup page' do
    visit root_path
    click_link 'SIGN UP'
    expect(page).to have_current_path(new_user_registration_path)
  end
end
