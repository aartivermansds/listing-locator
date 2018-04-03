class AddToFieldToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :contact, :string
    add_column :users, :address, :string
  end
end
