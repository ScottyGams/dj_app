class Comment < ActiveRecord::Base
  attr_accessible :song_id, :user_id, :content
  belongs_to :user
  belongs_to :song

  validates :user_id, presence: true
  validates :content, presence: true
  validates :song_id, presence: true
end
