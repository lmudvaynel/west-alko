module Refinery
  module Factories
    module Admin
      class FactoriesController < ::Refinery::AdminController

        crudify :'refinery/factories/factory',
                :title_attribute => 'name',
                :xhr_paging => true

        def destroy
          title = @factory.name
          
          Refinery::FactoryPhotos::FactoryPhoto.where("factory_id = ?",@factory.id).each do |factory_photo|
            if factory_photo.destroy
              title += " "+factory_photo.id.to_s 
            end  
          end
          
          if @factory.destroy
            flash.notice = t('destroyed', :scope => 'refinery.crudify', :what => "'#{title}'")
          end
          
          redirect_to redirect_url
        end

      end
    end
  end
end
