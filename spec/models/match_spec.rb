# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Match, type: :model do
  before(:example) do
    @match = Match.create(
      team: 'Men',
      home_team: 'Team A',
      away_team: 'Team B',
      home_sets: 3,
      away_sets: 2,
      venue: 'A random venue',
      date: DateTime.now,
      score: '25:20 25:20 22:25 21:25 10:15'
    )
  end

  it 'returns correct full name' do
    expected_homepage_title = 'Team A 3:2 Team B'

    expect(@match.home_page_title).to eq(expected_homepage_title)
  end

  # rubocop:disable Layout/LineLength
  it 'returns correct description' do
    expected_description = "Our Men played their last game at A random venue on #{@match.date}. Set scores were as follows: 25:20 25:20 22:25 21:25 10:15. All the previous matches and results are available on the matches page."

    expect(@match.home_page_description).to eq(expected_description)
  end
  # rubocop:enable Layout/LineLength
end
