require 'rails_helper'

RSpec.describe EventsController, type: :controller do

    let(:sport)     { Sport.create(desc: "Test sport", pos: 11) }
    let(:event)     { Event.create(sport: sport, desc: "Test event", comp_desc: 'Test event comp_desc', pos: 111 ) }
    let(:market1)   { Market.create(event: event, desc: "Test market 1", pt_desc: 'Test market pt_desc 1') }
    let(:market2)   { Market.create(event: event, desc: "Test market 2", pt_desc: 'Test market pt_desc 2') }
    let!(:outcome1) { Outcome.create(market: market1, d: "Test outcome 1", fdp: '1.2') }
    let!(:outcome2) { Outcome.create(market: market1, d: "Test outcome 2", fdp: '1.6') }
    let!(:outcome3) { Outcome.create(market: market2, d: "Test outcome 3", fdp: '1.05') }
    let!(:outcome4) { Outcome.create(market: market2, d: "Test outcome 4", fdp: '1.5') }
    let!(:outcome5) { Outcome.create(market: market2, d: "Test outcome 5", fdp: '1.9') }
  
  describe "show_outcomes" do
    it 'renders the outcomes belonging to the given event' do
      get :show_outcomes, params: { sport_id: sport.id, event_id: event.id}, format: :json
      expect(@controller.instance_variable_get(:@outcomes).count).to eq(5)
      expect(response).to        be_successful
      expect(response.status).to eq 200
      expect(response.body).to   include outcome1.d
      expect(response.body).to   include outcome2.d
      expect(response.body).to   include outcome3.d
      expect(response.body).to   include outcome4.d
      expect(response.body).to   include outcome5.d
      expect(response.body).to   include market1.desc
      expect(response.body).to   include market2.desc
    end
  end

end