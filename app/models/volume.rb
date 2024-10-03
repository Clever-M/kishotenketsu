class Volume < ApplicationRecord
  belongs_to :novel
  has_many :chapters
end
