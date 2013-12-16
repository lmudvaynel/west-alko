module Refinery
  module Products
    module Admin
      class ProductsController < ::Refinery::AdminController

        crudify :'refinery/products/product',
                :title_attribute => 'name',
                :xhr_paging => true

        def destroy
          @product = Product.find_by_id(params[:id])
          
          Refinery::Volumes::Volume.where("product_id = ?",@product.id).each do |volume|
            volume.destory
          end
          
          title = @product.name
          
          if @product.destroy
            flash.notice = t('destroyed', :scope => 'refinery.crudify', :what => "'#{title}'")
          end
          
          redirect_to redirect_url
        end


        
      end
    end
  end
end
