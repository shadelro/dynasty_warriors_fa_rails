class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.integer :player_id
      t.integer :team_id
      t.decimal :amount
      t.timestamps
    end
  end
end
