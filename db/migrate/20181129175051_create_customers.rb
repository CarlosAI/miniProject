class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :nombre
      t.string :ciudad
      t.string :correo
      t.string :tel
      t.string :rfc

      t.timestamps
    end
  end
end
