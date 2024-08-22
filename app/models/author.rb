class Author < ApplicationRecord
  has_many :novels, dependent: :destroy
  has_many :chapters

  validates :name, :nickname, presence: true
  validates :bio, length: { maximum: 500 }
end
