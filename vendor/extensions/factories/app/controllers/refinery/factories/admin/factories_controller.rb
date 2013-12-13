module Refinery
  module Factories
    module Admin
      class FactoriesController < ::Refinery::AdminController

        crudify :'refinery/factories/factory',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
