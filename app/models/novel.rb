class Novel < ApplicationRecord
  belongs_to :author
  has_many :chapters, dependent: :destroy

  validates :title, presence: true
  validates :description, length: { maximum: 1000 }
end
