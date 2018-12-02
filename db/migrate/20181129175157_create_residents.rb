class CreateResidents < ActiveRecord::Migration[5.1]
  def change
    create_table :residents do |t|
      t.string :nombre
      t.integer :num_habitacion
      t.string :nombre_cliente
      t.date :fecha_llegada
      t.date :fecha_salida

      t.timestamps
    end
  end
end
