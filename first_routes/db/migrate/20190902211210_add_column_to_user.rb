class AddColumnToUser < ActiveRecord::Migration[5.2]
  def change
    
    remove_column :users, :name, :string, null: false
    remove_column :users, :email, :string, null: false
  end
end
