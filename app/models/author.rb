class Author < ApplicationRecord
  has_many :novels, dependent: :destroy

  validates :name, :nickname, presence: true
  validates :bio, length: { maximum: 500 }
end
