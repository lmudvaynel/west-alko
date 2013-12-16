module Refinery
  module Products
    class Product < Refinery::Core::BaseModel
      self.table_name = 'refinery_products'

      attr_accessible :name, :description, :description_short, :position, :make_type, :alco_type

      validates :name, :presence => true, :uniqueness => true
      validates :make_type, :alco_type, :presence => true

      translates :name, :description, :description_short

      class Translation
        attr_accessible :locale
      end

      def prev
        prod = Product.where(["id < ?", id]).last
        if prod == nil
          Product.where(["id > ?", id]).first
        else
          prod
        end
      end

      def next
        prod = Product.where(["id > ?", id]).first
        if prod == nil
          Product.where(["id < ?", id]).last
        else
          prod
        end
      end
      
    end
  end
end
