class CreateOutcomes < ActiveRecord::Migration[5.2]
  def change
    create_table :outcomes do |t|
      t.belongs_to :market, null: false, foreign_key: true
      t.string :d
      t.string :fdp
      t.timestamps
    end
  end
end
