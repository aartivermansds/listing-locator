class CreateListingCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :listing_customers do |t|
      t.integer :customer_id
      t.integer :listing_id

      t.timestamps
    end
  end
end
