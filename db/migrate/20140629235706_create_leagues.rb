class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.string :name
      t.integer :commissioner_id

      t.timestamps
    end
  end
end
