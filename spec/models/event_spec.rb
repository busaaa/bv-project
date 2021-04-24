require 'rails_helper'

RSpec.describe Event, type: :model do
  
  describe 'DB columns, constraints and relations', :shoulda do
    it { should have_db_column(:id).of_type(:integer) }
    it { should have_db_column(:desc).of_type(:string) }
    it { should have_db_column(:comp_desc).of_type(:string) }
    it { should have_db_column(:pos).of_type(:integer) }
    it { should have_db_column(:created_at).of_type(:datetime) }
    it { should have_db_column(:updated_at).of_type(:datetime) }
    it { should have_db_column(:sport_id).of_type(:integer).with_options(null: false) }

    it { should have_many(:markets).class_name('Market') }
    it { should have_many(:outcomes).class_name('Outcome') }
  end

  describe 'accepts_nested_attributes_for' do
    it 'creates event with markets' do
      sport              = Sport.create(desc: "Test sport for event", pos: 22)
      test_desc          = 'Test desc'
      test_pt_desc       = 'Test pt_desc'
      markets_attributes = [{desc: test_desc, pt_desc: test_pt_desc}]
      event              = Event.create(sport: sport, desc: "Test event", comp_desc: 'Test event comp_desc', pos: 111, markets_attributes: markets_attributes)

      expect(event.markets.first.desc).to eq test_desc
      expect(event.markets.first.pt_desc).to eq test_pt_desc
    end
  end

  describe 'default_scope' do
    let(:sport) { Sport.create(desc: "Test sport", pos: 11) }
    let!(:event1) { Event.create(sport: sport, desc: "Test event 1", comp_desc: 'Test event comp_desc 1', pos: 3) }
    let!(:event2) { Event.create(sport: sport, desc: "Test event 2", comp_desc: 'Test event comp_desc 1', pos: 2) }
    let!(:event3) { Event.create(sport: sport, desc: "Test event 3", comp_desc: 'Test event comp_desc 1', pos: 1) }

    it 'gives back events ordered by pos' do
      expect(Event.all.first).to  eq event3
      expect(Event.all.second).to eq event2
      expect(Event.all.third).to  eq event1
    end
  end
end