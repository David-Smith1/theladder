class CreateTops < ActiveRecord::Migration[6.0]
  def change
    create_table :tops do |t|
      t.string :name
      t.integer :position
      t.integer :macro_score

      t.timestamps
    end
  end
end
