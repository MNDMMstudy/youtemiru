class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :comment_genre, foreign_key:'genre_id'
  belongs_to :youte
  has_many :favorites, dependent: :destroy

  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end

end
