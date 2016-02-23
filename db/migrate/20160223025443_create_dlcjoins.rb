class CreateDlcjoins < ActiveRecord::Migration
  def change
    create_table :dlcjoins do |t|
      t.string :dlc_name
      t.decimal :dlc_price
      t.string :dlc_date
      t.decimal :game_price
      t.boolean :own
      t.boolean :want
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :game, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
