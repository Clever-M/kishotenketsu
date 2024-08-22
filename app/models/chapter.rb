class Chapter < ApplicationRecord
  belongs_to :novel

  validates :title, :body, presence: true
end
