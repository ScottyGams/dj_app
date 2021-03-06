class Genre < ActiveRecord::Base
  attr_accessible :name
  
  validates :name, presence: true, uniqueness: true

  has_many :songs
  has_many :users, through: :songs
end
