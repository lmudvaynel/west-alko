module Refinery
  module Products
    class Product < Refinery::Core::BaseModel
      self.table_name = 'refinery_products'

      attr_accessible :name, :description, :position

      validates :name, :presence => true, :uniqueness => true
    
    end
  end
end
