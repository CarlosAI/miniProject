class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :nickname
      t.string :password
      t.string :correo
      t.string :tipo

      t.timestamps
    end
  end
end
