# This migration comes from refinery_volumes (originally 1)
class CreateVolumesVolumes < ActiveRecord::Migration

  def up
    create_table :refinery_volumes do |t|
      t.string :price
      t.string :volume
      t.integer :pic_id
      t.integer :position

      t.timestamps
    end

    Refinery::Volumes::Volume.create_translation_table! :price => :string, :volume => :string

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-volumes"})
    end

    drop_table :refinery_volumes

    Refinery::Volumes::Volume.drop_translation_table!

  end

end
