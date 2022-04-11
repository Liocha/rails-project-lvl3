class FixColumnNameInUsersModel < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :login, :name
  end
end
