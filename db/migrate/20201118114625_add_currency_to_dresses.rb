class AddCurrencyToDresses < ActiveRecord::Migration[6.0]
  def change
    add_column :dresses, :currency, :string
  end
end
