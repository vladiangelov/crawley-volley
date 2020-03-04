class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :venues, :teams, :contact]

  def home
  end

  def venues
  end

  def teams
  end

  def contact
  end
end
