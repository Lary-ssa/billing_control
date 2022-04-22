class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :document
      t.string :contact
      t.string :address
      t.string :email
      t.string :age

      t.timestamps
    end
  end
end
