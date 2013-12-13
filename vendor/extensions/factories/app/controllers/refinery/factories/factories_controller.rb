module Refinery
  module Factories
    class FactoriesController < ::ApplicationController

      before_filter :find_all_factories
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @factory in the line below:
        present(@page)
      end

      def show
        @factory = Factory.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @factory in the line below:
        present(@page)
      end

    protected

      def find_all_factories
        @factories = Factory.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/factories").first
      end

    end
  end
end
