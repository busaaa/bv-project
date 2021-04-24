class BasicDataProvider

  include Singleton
  
  def load_data
    get_normalized_data.each do |sport_data|
      Sport.create! sport_data
    end
  rescue => error
    # TODO 
  end

  # private 

  def get_normalized_data
    url      = 'https://www.betvictor.com/bv_in_play/v2/en-gb/1/mini_inplay.json'
    request  = RestClient::Request.new(method: :get, headers: { content_type: 'application/json'}, url: url)
    response = JSON.parse(request.execute.body)

    # sports = response['sports'].map do |sport|
    #   events = sport['comp'].map do |comp|
    #     comp['events'].map do |event|
    #       markets = event['markets'].map do |market|
    #         outcomes = market['o'].map do |outcome|
    #           {
    #             id:  outcome['oid'],
    #             d:   outcome['d'],
    #             fdp: outcome['fdp'],
    #           }
    #         end
            
    #         {
    #           id:                  market['id'],
    #           desc:                market['desc'],
    #           pt_desc:             market['ptdesc'],
    #           outcomes_attributes: outcomes,
    #         }
    #       end
          
    #       {
    #         id:                 event['id'],
    #         desc:               event['desc'],
    #         comp_desc:          comp['desc'],
    #         pos:                event['pos'],
    #         markets_attributes: markets,
    #       }
    #     end
    #   end.flatten

    #   {
    #     id:                sport['id'],
    #     desc:              sport['desc'],
    #     pos:               sport['pos'],
    #     events_attributes: events,
    #   }
    # end
  end
end