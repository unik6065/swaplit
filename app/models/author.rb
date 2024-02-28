class Author < ApplicationRecord
  # date of birth must be present
  validates :date_of_birth, presence: true
  # first name must be present
  validates :first_name, presence: true
  # last name must be present
  validates :last_name, presence: true
end
