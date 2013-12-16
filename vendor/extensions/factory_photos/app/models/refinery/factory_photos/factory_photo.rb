module Refinery
  module FactoryPhotos
    class FactoryPhoto < Refinery::Core::BaseModel
      self.table_name = 'refinery_factory_photos'

      attr_accessible :title, :description, :description_short, :image_id, :position, :factory_id

      validates :factory_id, :presence => true

      translates :description, :description_short

      class Translation
        attr_accessible :locale
      end

      belongs_to :image, :class_name => '::Refinery::Image'
      belongs_to :factory, :class_name => '::Refinery::Factories::Factory'
    end
  end
end
