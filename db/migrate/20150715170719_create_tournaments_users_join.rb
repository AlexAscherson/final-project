class CreateTournamentsUsersJoin < ActiveRecord::Migration

  def self.up
    create_table :tournaments_users, :id => false do |t|
      t.integer :tournament_id
      t.integer :user_id
    end

    add_index :tournaments_users, [:tournament_id, :user_id]
  end

  def self.down
    drop_table :tournmanents_users
    drop_table :tournaments_users
  end
end

