class AddFkToAddresses < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :addresses, :clients
  end
end
