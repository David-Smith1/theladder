class CreateJgs < ActiveRecord::Migration[6.0]
  def change
    create_table :jgs do |t|
      t.string :name
      t.integer :position
      t.integer :macro_score

      t.timestamps
    end
  end
end
