class CreateEventsTournaments < ActiveRecord::Migration
  def change
    create_table :events_tournaments do |t|
      t.integer :tournament_id
      t.integer :event_id

      t.timestamps null: false
    end
  end
end
