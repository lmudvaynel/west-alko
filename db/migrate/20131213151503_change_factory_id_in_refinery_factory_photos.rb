class ChangeFactoryIdInRefineryFactoryPhotos < ActiveRecord::Migration
  def change
    rename_column :refinery_factory_photos, :refinery_factory_id, :factory_id
  end
end
