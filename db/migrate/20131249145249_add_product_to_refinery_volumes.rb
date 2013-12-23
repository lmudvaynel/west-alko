class AddProductToRefineryVolumes < ActiveRecord::Migration
  def change
    add_column :refinery_volumes, :product_id, :integer
  end
end
