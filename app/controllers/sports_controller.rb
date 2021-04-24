class SportsController < ApplicationController

  def index
    @sports = Sport.all
    render json: @sports
  end

  def show_events
    @events = Sport.find(sport_id_param).events
    render json: @events
  end

  private

  def sport_id_param
    params.permit(:sport_id)[:sport_id]
  end

end