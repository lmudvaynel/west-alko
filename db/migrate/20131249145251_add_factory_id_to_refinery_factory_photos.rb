class AddFactoryIdToRefineryFactoryPhotos < ActiveRecord::Migration
  def change
    add_column :refinery_factory_photos, :factory_id, :integer
  end
end
