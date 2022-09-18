class Youte < ApplicationRecord
  belongs_to :user
  belongs_to :youte_genre, foreign_key:'genre_id'
  has_many :comments
end
