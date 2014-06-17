module Refinery
  module Products
    class ProductsController < ::ApplicationController

      before_filter :find_all_products
      before_filter :find_page
      
      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @product in the line below:
        present(@page)
      end

      def show
        @product = Product.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @product in the line below:
        present(@page)
      end

    protected

      def find_all_products
        alco = ["wine","whiskey","vodka"]
        make = ["own","foreign"]
        if make.include?(params[:make]) and alco.include?(params[:alco])
          @products = Product.where("make_type = ? and alco_type = ?", params[:make], params[:alco]).order('position ASC')
        elsif alco.include?(params[:alco]) 
          @products = Product.where("alco_type = ?", params[:alco]).order('position ASC')
        elsif make.include?(params[:make])
          @products = Product.where("make_type = ?", params[:make]).order('position ASC')
        else
          @products = Product.order('position ASC')
        end
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/products").first
      end

    end
  end
end
