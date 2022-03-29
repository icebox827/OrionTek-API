class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.integer :client_id

      t.timestamps
    end
    add_index :addresses, :client_id
  end
end
