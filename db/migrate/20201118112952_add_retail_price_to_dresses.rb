class AddRetailPriceToDresses < ActiveRecord::Migration[6.0]
  def change
    add_column :dresses, :retail_price, :string
  end
end
