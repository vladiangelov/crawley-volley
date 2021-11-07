# frozen_string_literal: true

require 'rails_helper'

# rubocop:disable Metrics/BlockLength
RSpec.describe 'Visiting the homepage', type: :feature do
  before(:example) do
    Player.create!(
      first_name: 'Joe',
      last_name: 'Bloggs',
      team: 'Men',
      position: 'Outside hitter',
      shirt_number: 1
    )

    Match.create!(
      team: 'Men',
      home_team: 'Team A',
      away_team: 'Team B',
      home_sets: 3,
      away_sets: 2,
      venue: 'A random venue',
      date: DateTime.now,
      score: '25:20 25:20 22:25 21:25 10:15'
    )

    @user = User.create!(
      email: 'testmail@crawleysparks.co.uk',
      password: 'blabla'
    )

    Article.create!(
      title: 'Sample title',
      content: 'Sample content',
      user: @user
    )
  end

  scenario 'shows the navbar with all links' do
    visit root_path
    expect(page).to have_content('ABOUT VENUES NEWS TEAMS MATCHES CONTACT')
  end

  scenario 'shows the login button for users' do
    visit root_path
    expect(page).to have_content('Member Login')
  end

  scenario 'allows members to login' do
    visit root_path
    within('.member-login') do
      click_link 'Member Login'
    end
    expect(page).to have_content('Log in')
    within('.new_user') do
      fill_in 'Email', with: @user.email
      fill_in 'Password', with: @user.password
    end
    click_button 'Log in'

    expect(page).to have_content('Admin Page')
    expect(page).to have_content('Sign Out')
  end
end
# rubocop:enable Metrics/BlockLength
