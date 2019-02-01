class User < ApplicationRecord
  has_many :playlists, dependent: :destroy
  validates :name, :email, presence: true
  validates :email, uniqueness: true
end
