class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :name
      t.integer :creator_id
      t.text :tournament_description
      t.string :imageurl
      t.text :user_id
      t.datetime :start_date
      t.datetime :end_date
      t.integer :group_id

      t.timestamps null: false
    end
  end
end
