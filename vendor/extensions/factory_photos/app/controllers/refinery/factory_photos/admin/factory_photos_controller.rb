module Refinery
  module FactoryPhotos
    module Admin
      class FactoryPhotosController < ::Refinery::AdminController

        crudify :'refinery/factory_photos/factory_photo',
                :title_attribute => 'description',
                :xhr_paging => true

      end
    end
  end
end
