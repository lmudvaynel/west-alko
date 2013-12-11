# This migration comes from refinery_products (originally 1)
class CreateProductsProducts < ActiveRecord::Migration

  def up
    create_table :refinery_products do |t|
      t.string :name
      t.text :description
      t.text :description_short
      t.integer :position

      t.timestamps
    end

    Refinery::Products::Product.create_translation_table! :name => :string, :description => :text, :description_short => :text

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-products"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/products/products"})
    end

    drop_table :refinery_products

    Refinery::Products::Product.drop_translation_table!

  end

end
