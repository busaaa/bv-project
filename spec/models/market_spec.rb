require 'rails_helper'

RSpec.describe Market, type: :model do
  
  describe 'DB columns, constraints and relations', :shoulda do
    it { should have_db_column(:id).of_type(:integer) }
    it { should have_db_column(:desc).of_type(:string) }
    it { should have_db_column(:pt_desc).of_type(:string) }
    it { should have_db_column(:created_at).of_type(:datetime) }
    it { should have_db_column(:updated_at).of_type(:datetime) }
    it { should have_db_column(:event_id).of_type(:integer).with_options(null: false) }

    it { should have_many(:outcomes).class_name('Outcome') }
  end

  describe 'accepts_nested_attributes_for' do
    it 'creates market with outcomes' do
      sport               = Sport.create(desc: "Test sport for market", pos: 33)
      event               = Event.create(sport: sport, desc: "Test event for market", comp_desc: 'Test event comp_desc for market', pos: 222)
      test_d              = 'Test d'
      test_fdp            = 'Test fdp'
      outcomes_attributes = [{d: test_d, fdp: test_fdp}]
      market              = Market.create(event: event, desc: "Test market", pt_desc: 'Test market pt_desc', outcomes_attributes: outcomes_attributes)

      expect(market.outcomes.first.d).to eq test_d
      expect(market.outcomes.first.fdp).to eq test_fdp
    end
  end

end