class Client < ApplicationRecord
  # Validations
  validates :first_name, presence: true, length: { minimum: 2, maximum: 20 }
  validates :last_name, presence: true, length: { minimum: 2, maximum: 25 }
  validates :email, presence: true, uniqueness: { case_sensitive: true }
  validates :phone, presence: true, length: { minimum: 4, maximum: 20 }
  validates_format_of :email, with: /\A\S+@.+\.\S+\z/
  validates :company_id, presence: true

  # Associations
  belongs_to :company
  has_many :addresses, dependent: :destroy

  # Built-in method to count clients
  def self.client_count
    @number_client = Client.group(:company_id).count
  end
end
