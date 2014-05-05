class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :about, :email, :image, :location, :name, :password, :password_confirmation, :role, :border


  validates :email, presence: true, uniqueness: true
  validates :password, confirmation: true, :length => { :in => 6..20 }, on: :create

  has_many :songs
  has_many :comments
  has_many :genres, through: :songs

  #default_scope where("role == 'admin'").order('name ASC')

  mount_uploader :image, ProfilePicUploader
end
