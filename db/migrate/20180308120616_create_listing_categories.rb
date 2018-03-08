class CreateListingCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :listing_categories do |t|
      t.string :name
      t.text :description
      t.string :banner_image

      t.timestamps
    end
  end
end
