require 'rails_helper'

RSpec.describe Outcome, type: :model do
  
  describe 'DB columns, constraints and relations', :shoulda do
    it { should have_db_column(:id).of_type(:integer) }
    it { should have_db_column(:d).of_type(:string) }
    it { should have_db_column(:fdp).of_type(:string) }
    it { should have_db_column(:created_at).of_type(:datetime) }
    it { should have_db_column(:updated_at).of_type(:datetime) }
    it { should have_db_column(:market_id).of_type(:integer).with_options(null: false) }
  end

end