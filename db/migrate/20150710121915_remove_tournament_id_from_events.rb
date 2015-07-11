class RemoveTournamentIdFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :tournament_id, :string
    add_column :events, :tournament_id, :integer

  end
end
