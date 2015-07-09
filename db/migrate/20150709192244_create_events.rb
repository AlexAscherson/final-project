class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.integer :host_id
      t.text :event_description
      t.string :imageurl
      t.text :user_id
      t.datetime :start_date
      t.datetime :end_date
      t.integer :group_id
      t.text :tournament_id
      t.string :location
      t.integer :outcome

      t.timestamps null: false
    end
  end
end
