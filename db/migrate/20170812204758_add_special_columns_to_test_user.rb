class AddSpecialColumnsToTestUser < ActiveRecord::Migration[5.0]
  def change
    add_column :test_users, :sniper, :integer
    add_column :test_users, :shotgun, :integer
    add_column :test_users, :fusion, :integer
    add_column :test_users, :sidearm, :integer
  end
end
