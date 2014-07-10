class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.integer :owner_id
      t.integer :user_id
      t.integer :league_id

      t.timestamps
    end
  end
end
