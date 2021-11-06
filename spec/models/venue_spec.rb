# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Venue, type: :model do
  context 'if all fields exist' do
    it 'returns full description' do
      venue = Venue.create(
        name: 'Random School',
        address: 'Random Street Address',
        training_day: 'Wednesday',
        training_time: '20:00 to 22:00',
        additional_info: 'This is some additional info'
      )

      expected_description = 'Wednesday - 20:00 to 22:00 - This is some additional info'

      expect(venue.description).to eq(expected_description)
    end
  end

  context 'if training day and time are nil' do
    it 'returns shortened description' do
      venue = Venue.create(
        name: 'Random School',
        address: 'Random Street Address',
        additional_info: 'This is some additional info'
      )

      expected_description = 'This is some additional info'

      expect(venue.description).to eq(expected_description)
    end
  end
end
