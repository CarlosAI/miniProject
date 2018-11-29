class CreateFactures < ActiveRecord::Migration[5.1]
  def change
    create_table :factures do |t|
      t.string :reservacion_id
      t.string :customer_id
      t.integer :price

      t.timestamps
    end
  end
end
