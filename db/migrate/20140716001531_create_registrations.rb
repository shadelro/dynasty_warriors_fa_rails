class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.integer :league_id
      t.integer :player_id
      t.timestamps
    end
  end
end
