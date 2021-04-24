Rails.application.routes.draw do

  get '/sports'                            => 'sports#index'
  get '/sports/:sport_id'                  => 'sports#show_events'
  get '/sports/:sport_id/events/:event_id' => 'events#show_outcomes'

end
