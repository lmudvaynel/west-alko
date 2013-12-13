class CreateFactoryPhotosFactoryPhotos < ActiveRecord::Migration

  def up
    create_table :refinery_factory_photos do |t|
      t.text :description
      t.text :description_short
      t.integer :image_id
      t.integer :position

      t.timestamps
    end

    Refinery::FactoryPhotos::FactoryPhoto.create_translation_table! :description => :text, :description_short => :text

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-factory_photos"})
    end

    drop_table :refinery_factory_photos

    Refinery::FactoryPhotos::FactoryPhoto.drop_translation_table!

  end

end
