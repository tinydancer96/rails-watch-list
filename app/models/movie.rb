class Movie < ApplicationRecord
  validates_uniqueness_of :title
  validates_presence_of :title, :overview

  has_many :bookmarks

end
