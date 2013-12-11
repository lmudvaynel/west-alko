module Refinery
  module Volumes
    class Volume < Refinery::Core::BaseModel
      self.table_name = 'refinery_volumes'

      attr_accessible :price, :volume, :pic_id, :position

      translates :price, :volume

      class Translation
        attr_accessible :locale
      end

      validates :price, :presence => true, :uniqueness => true

      belongs_to :pic, :class_name => '::Refinery::Image'
    end
  end
end
