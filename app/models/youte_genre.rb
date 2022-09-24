class YouteGenre < ApplicationRecord
  has_many :youtes

  def self.looks(search, id)
    @youte = Youte.where(id: id)
  end
end
