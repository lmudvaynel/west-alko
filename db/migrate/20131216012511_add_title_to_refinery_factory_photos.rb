class AddTitleToRefineryFactoryPhotos < ActiveRecord::Migration
  def self.up
    add_column :refinery_factory_photos, :title, :string
  end
end
