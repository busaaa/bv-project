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

  describe 'default_scope' do
    let!(:sport1) { Sport.create(desc: "Test sport 1", pos: 2) }
    let!(:sport2) { Sport.create(desc: "Test sport 2", pos: 1) }
    let!(:sport3) { Sport.create(desc: "Test sport 3", pos: 3) }

    it 'gives back sports ordered by pos' do
      expect(Sport.first).to  eq sport2
      expect(Sport.second).to eq sport1
      expect(Sport.third).to  eq sport3
    end
  end

end