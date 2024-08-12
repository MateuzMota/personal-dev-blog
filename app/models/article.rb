class Article < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true, length: { minimum: 10 }
  has_rich_text :content
end
