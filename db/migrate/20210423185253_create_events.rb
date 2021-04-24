class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.belongs_to :sport, null: false, foreign_key: true
      t.string :desc
      t.string :comp_desc
      t.integer :pos
      t.timestamps
    end
  end
end
