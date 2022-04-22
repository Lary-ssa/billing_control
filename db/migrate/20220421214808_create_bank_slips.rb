class CreateBankSlips < ActiveRecord::Migration[7.0]
  def change
    create_table :bank_slips do |t|
      t.string :bar_code
      t.references :client, null: false, foreign_key: true
      t.references :payer, null: false, foreign_key: { to_table: :clients }
      t.date :due_date
      t.float :amount
      t.text :description

      t.timestamps
    end
  end
end
