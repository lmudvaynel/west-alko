module Refinery
  module Products
    class Product < Refinery::Core::BaseModel
      self.table_name = 'refinery_products'

      attr_accessible :name, :description, :description_short, :position, :make_type, :alco_type

      translates :name, :description, :description_short

      class Translation
        attr_accessible :locale
      end

      validates :name, :presence => true, :uniqueness => true
    end
  end
end
