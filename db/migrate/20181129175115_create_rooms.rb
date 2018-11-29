class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.integer :numero
      t.string :tipo
      t.integer :planta
      t.date :fecha_llegada
      t.date :fecha_salida

      t.timestamps
    end
  end
end
