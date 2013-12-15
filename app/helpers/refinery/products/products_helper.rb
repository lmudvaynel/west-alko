module Refinery
  module Products
    module ProductsHelper
=begin
def which_alco_type_list
        @types_en = {all: 'All', vine: 'Vine', vodka: 'Vodka', whiskey: 'Whiske'} 
        @types_ru = {all: 'Vse', vine: 'Vino', vodka: 'V', whiskey: 'Visk'}
        I18n.locale == :en ? @types_en : @types_ru
      end

      def which_navigation_list
        @types_en = {next_product: 'Next', prev_product: 'Previous', all_product: 'Product', desc_product: 'roduct Description'} 
        @types_ru = {next_product: 'sl', prev_product: 'pr', all_product: 'vse', desc_product: 'op'}
        I18n.locale == :en ? @types_en : @types_ru
      end
      =end
=end

    end
  end
end
