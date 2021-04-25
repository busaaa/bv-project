require 'rails_helper'

RSpec.describe SportsController, type: :controller do

  let(:sport1)  { Sport.create(desc: "Test sport 1", pos: 11) }
  let(:sport2)  { Sport.create(desc: "Test sport 2", pos: 2) }
  let!(:event1) { Event.create(sport: sport1, desc: "Test event 1", comp_desc: 'Test event comp_desc 1', pos: 111 ) }
  let!(:event2) { Event.create(sport: sport1, desc: "Test event 2", comp_desc: 'Test event comp_desc 2', pos: 22 ) }
  let!(:event3) { Event.create(sport: sport2, desc: "Test event 3", comp_desc: 'Test event comp_desc 3', pos: 333 ) }
  
  around(:each) do |example|
    orig_u_b_e_a = BasicDataProvider::UPDATE_BEFORE_EVERY_ACTION
    BasicDataProvider::UPDATE_BEFORE_EVERY_ACTION = false
    example.run
    BasicDataProvider::UPDATE_BEFORE_EVERY_ACTION = orig_u_b_e_a
  end
    
  describe "index" do
    it 'renders the sports' do
      get :index, format: :json
      expect(@controller.instance_variable_get(:@sports).count).to eq(2)
      expect(response).to         be_successful
      expect(response.status).to  eq 200
      expect(response.body).to    include sport1.desc
      expect(response.body).to    include sport2.desc
    end
  end
  
  describe "show_events" do
    it 'renders the events_belonging to the given sport' do
      get :show_events, params: { sport_id: sport1.id}, format: :json
      expect(@controller.instance_variable_get(:@events).count).to eq(2)
      expect(response).to          be_successful
      expect(response.status).to   eq 200
      expect(response.body).to     include event1.desc
      expect(response.body).to     include event2.desc
      expect(response.body).not_to include event3.desc
    end
  end

end