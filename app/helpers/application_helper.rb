# encoding: utf-8

module ApplicationHelper

  def make_type_list
    @types_en = {own: 'Own', foreign: 'Foreign'} 
    @types_ru = {own: 'Собственные марки', foreign: 'Привлеченные марки'}
    I18n.locale == :en ? @types_en : @types_ru
  end

  def alco_type_list
    @types_en = {all: 'All', wine: 'Wine', vodka: 'Vodka', whiskey: 'Whiskey'} 
    @types_ru = {all: 'Все', wine: 'Вино', vodka: 'Водка', whiskey: 'Виски'}
    I18n.locale == :en ? @types_en : @types_ru
  end

  def navigation_list
    @types_en = {next_product: 'Next', prev_product: 'Previous', all_product: 'Product', desc_product: 'Рroduct Description'} 
    @types_ru = {next_product: 'Следующий', prev_product: 'Предыдущий', all_product: 'Все', desc_product: 'Описание Продукта'}
    I18n.locale == :en ? @types_en : @types_ru
  end

  def home_list
    @types_en = {view: 'View', img: 'Next'} 
    @types_ru = {view: 'Посмотреть', img: 'Следующий'}
    I18n.locale == :en ? @types_en : @types_ru
  end

  def mail_list
    @types_en = {quick: 'Quick Contact', name: 'Name', email: 'Email Address', message: 'Message', send: "Send email"} 
    @types_ru = {quick: 'Обратная Связь', name: 'Имя', email: 'Электронная почта', message: 'Сообщение', send: "Отправить email"}
    I18n.locale == :en ? @types_en : @types_ru
  end

  def link_for_lang
    I18n.locale == :en ? lang = :ru : lang = :en
    lang == :en ? pic = "English.png" : pic = "Russia.png"

    link_to image_tag(pic, :size => "50x50", :border => 0), refinery.url_for(:locale => lang)
  end

  
  def url_for_home
    page = Refinery::Page.where(:slug => 'домой').first
    refinery.url_for(page.url)
  end


  def url_for_product(product)
    if product == nil
      get_products.url.to_s
    else 
      get_products.url.to_s + "/" + product.id.to_s
    end
  end

  def url_for_type(way, value,value2=nil)
    if !value2 
      get_products.url.to_s + "?" + way + "=" + value 
    else
      get_products.url.to_s + "?" + way + "=" + value + "&make=" + value2
    end
  end

  def url_for_factory(factory)
    if factory == nil
      refinery.url_for(get_factories.url)
    else 
      refinery.url_for(get_factories.url) + "/" + factory.id.to_s
    end
  end

  def get_products
    Refinery::Page.find('products') 
  end

  def get_factories
    Refinery::Page.find('factories') 
  end
end
