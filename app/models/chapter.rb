class Chapter < ApplicationRecord
  belongs_to :volume

  validates :title, :body, presence: true
end
