class MatchesController < ApplicationController
  def index
    @matches = Match.all.order(date: :desc)
  end

  def new
    @match = Match.new
  end

  def create
    @match = Match.new(match_params)
    @match.save

    redirect_to matches_path
  end

  private

  def match_params
    params.require(:match).permit(:team, :home_team, :away_team, :home_sets, :away_sets, :score, :league, :venue, :address, :date)
  end
end
