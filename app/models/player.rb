# frozen_string_literal: true

# Class for a player
class Player < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :team, presence: true
  validates :position, presence: true
  validates :shirt_number, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end

  # rubocop:disable Layout/LineLength
  def home_page_description
    "#{full_name} is part of our #{team == 'Men' ? "men's team" : "ladies' team"}. #{first_name} plays on the #{position.downcase} position, using shirt number #{shirt_number}. If you want to find out more about all the players in the different teams, please click below."
  end
  # rubocop:enable Layout/LineLength
end
