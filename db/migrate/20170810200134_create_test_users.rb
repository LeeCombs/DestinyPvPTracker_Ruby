class CreateTestUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :test_users do |t|
      t.string :user_id
      t.integer :scout
      t.integer :handcannon
      t.integer :pulse
      t.integer :auto

      t.timestamps
    end
  end
end
