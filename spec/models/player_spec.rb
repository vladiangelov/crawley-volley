# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Player, type: :model do
  before(:example) do
    @player = Player.create(
      first_name: 'Joe',
      last_name: 'Bloggs',
      team: 'Men',
      position: 'Outside hitter',
      shirt_number: 1
    )
  end

  it 'returns correct full name' do
    expected_fullname = 'Joe Bloggs'

    expect(@player.full_name).to eq(expected_fullname)
  end

  # rubocop:disable Layout/LineLength
  it 'returns correct description' do
    expected_description = "Joe Bloggs is part of our men's team. Joe plays on the outside hitter position, using shirt number 1. If you want to find out more about all the players in the different teams, please click below."

    expect(@player.home_page_description).to eq(expected_description)
  end
  # rubocop:enable Layout/LineLength
end
