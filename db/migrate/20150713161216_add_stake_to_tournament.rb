class AddStakeToTournament < ActiveRecord::Migration
  def change
    add_column :tournaments, :stake, :integer
  end
end
