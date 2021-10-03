# frozen_string_literal: true

##
# Venues controller
#
class VenuesController < ApplicationController
  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)
    @venue.save

    redirect_to venues_path
  end

  def edit
    @venue = Venue.find(params[:id])
  end

  def update
    @venue = Venue.find(params[:id])
    @venue.update(venue_params)

    redirect_to venues_path
  end

  def destroy
    @venue = Venue.find(params[:id])
    @venue.delete

    redirect_to venues_path
  end

  def admin
    @venues = Venue.all
  end

  private

  def venue_params
    params.require(:venue).permit(:name, :address, :training_day, :training_time, :additional_info, :lat, :long)
  end
end
