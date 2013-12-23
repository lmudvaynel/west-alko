class AddTitleToRefineryFactoryPhotos < ActiveRecord::Migration
  def change
    add_column :refinery_factory_photos, :title, :string
  end
end
