class MatchesController < ApplicationController
  def index
    @matches = Match.all.order(date: :desc)
  end
end
