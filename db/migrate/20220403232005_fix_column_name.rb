class FixColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :password, :email
  end
end
