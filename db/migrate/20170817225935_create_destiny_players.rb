class CreateDestinyPlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :destiny_players do |t|
      t.string :membership_id
      t.integer :membership_type
      t.string :display_name
      t.string :icon_path

      t.timestamps
    end
  end
end
