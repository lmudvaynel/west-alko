class CreateFactoriesFactories < ActiveRecord::Migration

  def up
    create_table :refinery_factories do |t|
      t.string :name
      t.text :description
      t.text :description_short
      t.integer :title_image_id
      t.integer :position

      t.timestamps
    end

    Refinery::Factories::Factory.create_translation_table! :name => :string, :description => :text, :description_short => :text

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-factories"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/factories/factories"})
    end

    drop_table :refinery_factories

    Refinery::Factories::Factory.drop_translation_table!

  end

end
