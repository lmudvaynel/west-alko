module Refinery
  module Volumes
    module Admin
      class VolumesController < ::Refinery::AdminController

        crudify :'refinery/volumes/volume',
                :title_attribute => 'price',
                :xhr_paging => true

        def destroy
          title = @volume.product.name + " " +@volume.price + " " + @volume.volume
          if @volume.destroy
            flash.notice = t('destroyed', :scope => 'refinery.crudify', :what => "'#{title}'")
          end
          redirect_to redirect_url
        end

      end
    end
  end
end
