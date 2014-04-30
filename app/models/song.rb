class Song < ActiveRecord::Base
  attr_accessible :description, :genre_id, :name, :user_id, :song_upload
  
  validates :name, presence: true, uniqueness: true
  validates :song_upload, presence: :true

  belongs_to :genres
  belongs_to :user
  has_many :comments

  mount_uploader :song_upload, SongUploader
end
