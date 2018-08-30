class AddPriceToCars < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :price, :integer
  end
end
