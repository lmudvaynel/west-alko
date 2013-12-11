module Refinery
  module Volumes
    module Admin
      class VolumesController < ::Refinery::AdminController

        crudify :'refinery/volumes/volume',
                :title_attribute => 'price',
                :xhr_paging => true

      end
    end
  end
end
