module ApplicationHelper

  def make_type_list
    @types_en = {own: 'Own', foreign: 'Foreign', flood:  'Flood'} 
    @types_ru = {own: 'Sv', foreign: 'Ch', flood: 'Raz'}
    I18n.locale == :en ? @types_en : @types_ru
  end

  def alco_type_list
    @types_en = {all: 'All', vine: 'Vine', vodka: 'Vodka', whiskey: 'Whiske'} 
    @types_ru = {all: 'Vse', vine: 'Vino', vodka: 'V', whiskey: 'Visk'}
    I18n.locale == :en ? @types_en : @types_ru
  end

  def navigation_list
    @types_en = {next_product: 'Next', prev_product: 'Previous', all_product: 'Product', desc_product: 'roduct Description'} 
    @types_ru = {next_product: 'sl', prev_product: 'pr', all_product: 'vse', desc_product: 'op'}
    I18n.locale == :en ? @types_en : @types_ru
  end

  def home_list
    @types_en = {view: 'View', img: 'Increase Image'} 
    @types_ru = {view: 'Prosmtr', img: 'uveli'}
    I18n.locale == :en ? @types_en : @types_ru
  end

  def link_for_lang
    I18n.locale == :en ? lang = :ru : lang = :en
    link_to Refinery::I18n.locales[lang], refinery.url_for(:locale => lang)
  end

  def url_for_product(product)
    if product == nil
      get_products.url.to_s
    else 
      get_products.url.to_s + "/" + product.id.to_s
    end
  end

  def url_for_factory(factory)
    if factory == nil
      get_factories.url.to_s
    else 
      get_factories.url.to_s + "/" + factory.id.to_s
    end
  end

  def get_products
    Refinery::Page.find('products') 
  end

  def get_factories
    Refinery::Page.find('factories') 
  end
end
