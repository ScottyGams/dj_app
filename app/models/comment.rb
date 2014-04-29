class Comment < ActiveRecord::Base
  attr_accessible :song_id, :user_id, :content
  belongs_to :user
  belongs_to :song
end
