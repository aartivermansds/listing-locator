class CreateAccomodationAmenities < ActiveRecord::Migration[5.1]
  def change
    create_table :accomodation_amenities do |t|
      t.integer :accomodation_id
      t.integer :amenity_id

      t.timestamps
    end
  end
end
