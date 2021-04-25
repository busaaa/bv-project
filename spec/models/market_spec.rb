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

end