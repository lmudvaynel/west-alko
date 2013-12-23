class AddMakeTypeAndAlcoTypeToRefineryProducts < ActiveRecord::Migration
  def change
    add_column :refinery_products, :make_type, :string
    add_column :refinery_products, :alco_type, :string
  end
end
