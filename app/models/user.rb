class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :youtes
  has_many :comments
  has_many :favorites

  def active_for_authentication?
    super && (status != 0)
  end
end
