module Refinery
  module Factories
    class Factory < Refinery::Core::BaseModel
      self.table_name = 'refinery_factories'

      attr_accessible :name, :description, :description_short, :title_image_id, :position

      validates :name, :presence => true, :uniqueness => true
      validates :title_image_id, :presence => true

      translates :name, :description, :description_short

      class Translation
        attr_accessible :locale
      end

      belongs_to :title_image, :class_name => '::Refinery::Image'
    end
  end
end
