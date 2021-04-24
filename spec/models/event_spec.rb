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
end