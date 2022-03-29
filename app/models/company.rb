class Company < ApplicationRecord
  # Validations
  validates :name, presence :true, length: { minimum:2, maximum:30 }

  # Associations
  has_many :clients, dependent: :destroy
end
