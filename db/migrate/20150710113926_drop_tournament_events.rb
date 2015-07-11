class DropTournamentEvents < ActiveRecord::Migration
  def change
    drop_table :tournament_events
  end
end
