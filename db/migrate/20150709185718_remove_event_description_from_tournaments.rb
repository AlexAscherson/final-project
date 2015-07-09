class RemoveEventDescriptionFromTournaments < ActiveRecord::Migration
  def change
    remove_column :tournaments, :event_description
  end
end
