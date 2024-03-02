class Book < ApplicationRecord
  validates :EAN, presence: true, uniqueness: true
  validates :editor, presence: true
  validates :collection, presence: true
  validates :publication_date, presence: true
  validates :title, presence: true

  belongs_to :author
  has_many :user_books
  has_many :users, through: :user_books
end
