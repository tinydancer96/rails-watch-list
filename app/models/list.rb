class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy

  validates_presence_of :name
  validates_uniqueness_of :name

  # before_destroy :destroy_associated_movies

  # private

  # def destroy_associated_movies
  #   movies.destroy_all
  # end
end
