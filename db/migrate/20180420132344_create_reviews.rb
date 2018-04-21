class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :reviewable_type
      t.integer :reviewable_id
      t.integer :customer_id
      t.text :message

      t.timestamps
    end
  end
end
