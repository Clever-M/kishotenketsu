class Novel < ApplicationRecord
  belongs_to :author

  validates :title, presence: true
  validates :description, length: { maximum: 1000 }
  has_many :chapters, dependent: :destroy
end
