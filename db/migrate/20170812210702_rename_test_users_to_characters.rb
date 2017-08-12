class RenameTestUsersToCharacters < ActiveRecord::Migration[5.0]
  def change
    rename_table :test_users, :characters
  end
end
