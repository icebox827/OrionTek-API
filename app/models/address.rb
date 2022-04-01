class Address < ApplicationRecord
  # Validations
  validates :street, presence: true
  validates :city, presence: true, length: { minimum: 2 }
  validates :state, presence: true, length: { minimum: 2 }
  validates :zip, presence: true, length: { minimum: 6, maximum: 15 }
  validates :client_id, presence: true

  # Associations
  belongs_to :client

  # Built-in method to count addresses
  def self.address_count
    @number_address = Address.group(:client_id).count
  end
end
