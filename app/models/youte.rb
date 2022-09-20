class Youte < ApplicationRecord
  belongs_to :user
  belongs_to :youte_genre
  has_many :comments

  def self.looks(word)
    @youte = Youte.where("text LIKE?","%#{word}%")
  end
end
