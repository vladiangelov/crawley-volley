# frozen_string_literal: true

# Class for a match
class Match < ApplicationRecord
  validates :home_team, presence: true
  validates :away_team, presence: true
  validates :home_sets, presence: true
  validates :away_sets, presence: true
  validates :venue, presence: true
  validates :date, presence: true
  validates :score, presence: true

  def home_page_title
    "#{home_team} #{home_sets}:#{away_sets} #{away_team}"
  end

  # rubocop:disable Layout/LineLength
  def home_page_description
    "Our #{team} played their last game at #{venue} on #{date}. Set scores were as follows: #{score}. All the previous matches and results are available on the matches page."
  end
  # rubocop:enable Layout/LineLength
end
