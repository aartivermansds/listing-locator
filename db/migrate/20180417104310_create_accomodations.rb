class CreateAccomodations < ActiveRecord::Migration[5.1]
  def change
    create_table :accomodations do |t|
      t.string :name
      t.string :description
      t.string :banner_image
      t.string :city
      t.string :state
      t.string :country
      t.string :address
      t.string :zipcode
      t.string :website
      t.string :latitude
      t.string :longitude
      t.string :email
      t.string :contact
      t.integer :no_of_rooms
      t.integer :no_of_toilets
      t.integer :no_of_halls
      t.integer :user_id

      t.timestamps
    end
  end
end
