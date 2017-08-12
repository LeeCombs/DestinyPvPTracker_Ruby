class AddDefaultValueToColumns < ActiveRecord::Migration[5.0]
  def change
    change_column_default :test_users, :scout, 0
    change_column_default :test_users, :hand, 0
    change_column_default :test_users, :pulse, 0
    change_column_default :test_users, :auto, 0
    change_column_default :test_users, :sniper, 0
    change_column_default :test_users, :shotgun, 0
    change_column_default :test_users, :fusion, 0
    change_column_default :test_users, :sidearm, 0
  end
end
