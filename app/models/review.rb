class Review < ApplicationRecord
  belongs_to :brewery
  validates :content, presence: true
  validates :author, presence: true
end
