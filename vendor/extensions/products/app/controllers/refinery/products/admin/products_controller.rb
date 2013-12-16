module Refinery
  module Products
    module Admin
      class ProductsController < ::Refinery::AdminController

        crudify :'refinery/products/product',
                :title_attribute => 'name',
                :xhr_paging => true

        def destroy
          title = @product.name
          
          Refinery::Volumes::Volume.where("product_id = ?",@product.id).each do |volume|
            if volume.destroy
              title += " "+volume.id.to_s 
            end  
          end
          
          if @product.destroy
            flash.notice = t('destroyed', :scope => 'refinery.crudify', :what => "'#{title}'")
          end
          
          redirect_to redirect_url
        end
        
      end
    end
  end
end
