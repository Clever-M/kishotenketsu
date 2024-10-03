class Novel < ApplicationRecord
  belongs_to :author
  has_many :volumes, dependent: :destroy
  has_many :chapters, through: :volumes

  validates :title, presence: true
  validates :description, length: { maximum: 1000 }
end
