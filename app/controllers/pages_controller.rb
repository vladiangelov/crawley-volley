class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :venues, :teams, :contact, :about, :men, :ladies]

  def home
    @last_match = Match.last
    @latest_news = Article.last
    @random_player = Player.all.sample
  end

  def venues
    @markers = [{ lat: 51.133630, lng: -0.033350 }, # Imberhorne School
                { lat: 51.117859, lng: -0.209684 }, # Ifield CC
                { lat: 51.122058, lng: -0.176779 }] # Northgate playing field
  end

  def teams
  end

  def men
    @players = Player.all
  end

  def ladies
    @players = Player.all
  end

  def contact
  end
end
