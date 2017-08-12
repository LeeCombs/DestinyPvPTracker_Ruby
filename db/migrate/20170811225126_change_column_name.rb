class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :test_users, :handcannon, :hand
  end
end
