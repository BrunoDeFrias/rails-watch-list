class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  validates :movie_id, presence: true
  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id }
  validates :list, presence: true
end
