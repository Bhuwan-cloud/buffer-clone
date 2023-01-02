class RenameColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :passwowrd_digest, :password_digest
  end
end
