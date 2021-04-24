require 'rails_helper'

RSpec.describe Sport, type: :model do
  
  describe 'DB columns, constraints and relations', :shoulda do
    it { should have_db_column(:id).of_type(:integer) }
    it { should have_db_column(:desc).of_type(:string) }
    it { should have_db_column(:pos).of_type(:integer) }
    it { should have_db_column(:created_at).of_type(:datetime) }
    it { should have_db_column(:updated_at).of_type(:datetime) }

    it { should have_many(:events).class_name('Event') }
  end

  describe 'accepts_nested_attributes_for' do
    it 'creates sport with events' do
      test_desc         = 'Test desc'
      test_comp_desc    = 'Test comp_desc'
      test_pos          = 111
      events_attributes = [{desc: test_desc, comp_desc: test_comp_desc, pos: test_pos}]
      sport             = Sport.create(desc: "Test sport", pos: 11, events_attributes: events_attributes)

      expect(sport.events.first.desc).to      eq test_desc
      expect(sport.events.first.comp_desc).to eq test_comp_desc
      expect(sport.events.first.pos).to       eq test_pos
    end
  end

  describe 'default_scope' do
    let!(:sport1) { Sport.create(desc: "Test sport 1", pos: 2) }
    let!(:sport2) { Sport.create(desc: "Test sport 2", pos: 1) }
    let!(:sport3) { Sport.create(desc: "Test sport 3", pos: 3) }

    it 'gives back sports ordered by pos' do
      expect(Sport.all.first).to  eq sport2
      expect(Sport.all.second).to eq sport1
      expect(Sport.all.third).to  eq sport3
    end
  end

end