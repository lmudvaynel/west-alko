module Refinery
  module Products
    class Product < Refinery::Core::BaseModel
      self.table_name = 'refinery_products'

      attr_accessible :name, :description, :description_short, :position

      validates :name, :presence => true, :uniqueness => true

      translates :name, :description, :description_short

      class Translation
        attr_accessible :locale
      end

      def prev_product
        self.class.first(:conditions => ["name < ?", name], :order => "name desc")
      end

      def next_product
        self.class.first(:conditions => ["name > ?", name], :order => "name asc")
      end

      def previous
        Post.where(["id < ?", id]).last
      end

      def next
        Post.where(["id > ?", id]).first
      end
      
    end
  end
end
