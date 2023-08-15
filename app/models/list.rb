class List < ApplicationRecord
  validates_presence_of :name
  validates_uniqueness_of :name

  has_many :bookmarks
  has_many :movies, through: :bookmarks

  before_destroy :destroy_associated_movies

  private

  def destroy_associated_movies
    movies.destroy_all
  end
end
