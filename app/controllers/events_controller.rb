class EventsController < ApplicationController
  
  def show_outcomes
    @outcomes = Event.find(event_id_param).outcomes
    render json: @outcomes, include: :market
  end 

  private

  def event_id_param
    params.permit(:event_id)[:event_id]
  end

end