class AddToColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :date_of_birth, :date
    add_column :users, :company_name, :string
    add_column :users, :designation, :string
    add_column :users, :state, :string
    add_column :users, :city, :string
    add_column :users, :zipcode, :string
    add_column :users, :country, :string
    add_column :users, :about, :string
    add_column :users, :profile_image, :string
    add_column :users, :website, :string
    add_column :users, :facebook_url, :string
    add_column :users, :linkedin_url, :string
    add_column :users, :googleplus_url, :string
    add_column :users, :twitter_url, :string
    add_column :users, :youtube_url, :string
  end
end
