class Movie < ApplicationRecord
  validates_uniqueness_of :title
  validates_presence_of :title, :overview

  has_many :bookmarks

  before_destroy :check_for_bookmarks

  private

  def check_for_bookmarks
    if bookmarks.any?
      throw :abort
    end
  end
end
