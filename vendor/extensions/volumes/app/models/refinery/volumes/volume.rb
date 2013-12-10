module Refinery
  module Volumes
    class Volume < Refinery::Core::BaseModel
      self.table_name = 'refinery_volumes'

      attr_accessible :price, :product_id, :volume, :pic_id, :position

      validates :price, :presence => true, :uniqueness => true

      belongs_to :pic, :class_name => '::Refinery::Image'
      belongs_to :product, :class_name => '::Refinery::Products::Product'
    end
  end
end
