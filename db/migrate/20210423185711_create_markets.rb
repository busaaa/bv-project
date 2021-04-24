class CreateMarkets < ActiveRecord::Migration[5.2]
  def change
    create_table :markets do |t|
      t.belongs_to :event, null: false, foreign_key: true
      t.string :desc
      t.string :pt_desc
      t.timestamps
    end
  end
end
