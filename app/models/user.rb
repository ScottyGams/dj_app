class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :about, :email, :image, :location, :name, :password, :password_confirmation, :role, :profile_picture


  validates :email, presence: true, uniqueness: true
  validates :password, password_confirmation: true, :length => { :in => 6..20 }, if: :password_given?

  has_many :songs
  has_many :comments
  has_many :genres, through: :songs

  mount_uploader :profile_picture, ProfilePicUploader
end
