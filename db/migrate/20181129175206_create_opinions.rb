class CreateOpinions < ActiveRecord::Migration[5.1]
  def change
    create_table :opinions do |t|
      t.integer :user_id
      t.text :comentario

      t.timestamps
    end
  end
end
