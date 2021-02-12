class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.references :top, null: false, foreign_key: true
      t.references :mid, null: false, foreign_key: true
      t.references :jg, null: false, foreign_key: true
      t.references :bot, null: false, foreign_key: true
      t.references :sup, null: false, foreign_key: true

      t.timestamps
    end
  end
end
