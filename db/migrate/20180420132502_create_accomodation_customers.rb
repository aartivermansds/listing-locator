class CreateAccomodationCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :accomodation_customers do |t|
      t.integer :customer_id
      t.integer :accomodation_id

      t.timestamps
    end
  end
end
