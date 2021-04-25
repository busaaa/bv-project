class BasicDataProvider

  include Singleton

  UPDATE_BEFORE_EVERY_ACTION          = false
  DESTROY_ALL_SPORTS_AND_ASSOCIATIONS = false 
  DESTROY_ALL_EVENTS_AND_ASSOCIATIONS = false

  def load_data
    if DESTROY_ALL_SPORTS_AND_ASSOCIATIONS
      Sport.destroy_all  
    elsif DESTROY_ALL_EVENTS_AND_ASSOCIATIONS 
      Event.destroy_all
    end
    get_flat_data.each do |model, attributes_array|
      attributes_array.each do |attributes_hash|
        # creating Sport, Event, Market, Outcome records
        Object.const_get(model.capitalize).find_or_create_by(id: attributes_hash[:id]).update(attributes_hash[:attributes])
      end
    end
  end

  private 

  def get_response
    url       = 'https://www.betvictor.com/bv_in_play/v2/en-gb/1/mini_inplay.json'
    request   = RestClient::Request.new(method: :get, headers: { content_type: 'application/json'}, url: url)
    JSON.parse(request.execute.body)
  end

  def get_flat_data
    response = get_response

    response['sports'].each_with_object({sport: [], event: [], market: [], outcome: []}) do |sport_elem, models|
      sport_elem['comp'].each do |comp_elem|
        comp_elem['events'].each do |event_elem|
          event_elem['markets'].each do |market_elem|
            market_elem['o'].each do |outcome_elem|
              models[:outcome] << {
                                    id:         outcome_elem['oid'],
                                    attributes: { market_id: market_elem['id'], d: outcome_elem['d'], fdp: outcome_elem['fdp'] }
                                  }
            end
            
            models[:market] << {
                                 id:         market_elem['id'],
                                 attributes: { event_id: event_elem['id'], desc: market_elem['desc'], pt_desc: market_elem['ptdesc'] }
                               }
          end
          
          models[:event] << {
                              id:         event_elem['id'],
                              attributes: { sport_id: sport_elem['id'], desc: event_elem['desc'], comp_desc: comp_elem['desc'], pos: event_elem['pos'] }
                            }
        end
      end

      models[:sport] << {
                          id:         sport_elem['id'],
                          attributes: { desc: sport_elem['desc'], pos: sport_elem['pos'] }
                        }
    end
  end
end