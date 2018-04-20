class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :listings, dependent: :destroy
  has_many :accomodations, dependent: :destroy

  mount_uploader :profile_image, ImageUploader
  
  def name
    "#{self.firstname} #{self.lastname}"
  end

  def age
    now = Date.today
    year = now.year - self.date_of_birth.year
  end

end
