class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.integer :customer_id
      t.integer :user_id
      t.date :fecha_llegada
      t.date :fecha_salida
      t.integer :total
      t.string :status

      t.timestamps
    end
  end
end
