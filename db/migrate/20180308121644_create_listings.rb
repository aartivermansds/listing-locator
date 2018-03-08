class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.string :name
      t.text :description
      t.string :banner_image
      t.string :city
      t.string :state
      t.string :country
      t.string :zipcode
      t.float :latitude
      t.float :longitude
      t.string :contact
      t.string :email
      t.string :website
      t.string :address
      t.string :fb_url
      t.string :linkedin_url
      t.string :gplus_url
      t.string :twitter_url
      t.references :listing_category, foreign_key: true

      t.timestamps
    end
  end
end
