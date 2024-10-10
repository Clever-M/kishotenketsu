class Volume < ApplicationRecord
  belongs_to :novel

  has_many :chapters, dependent: :destroy

  validates :title, presence: true
  validates :description, length: { maximum: 1000 }
end
