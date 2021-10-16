# frozen_string_literal: true

##
# Pages controller
#
class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home venues teams contact about men ladies]

  def home
    @last_match = Match.last
    @latest_news = Article.last
    @featured_player = Player.all.sample
  end

  def venues
    @venues = Venue.all.order(:id)
    @markers = Venue.all.map do |venue|
      { lat: venue.lat, lng: venue.long }
    end
  end

  def teams; end

  def men
    @players = Player.all
  end

  def ladies
    @players = Player.all
  end

  def contact; end

  def admin; end
end
