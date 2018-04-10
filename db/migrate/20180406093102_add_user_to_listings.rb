class AddUserToListings < ActiveRecord::Migration[5.1]
  def change
    add_reference :listings, :user, index: true
  end
end
