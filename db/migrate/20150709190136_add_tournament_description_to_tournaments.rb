class AddTournamentDescriptionToTournaments < ActiveRecord::Migration
  def change
    add_column :tournaments, :tournament_description, :text
  end
end
