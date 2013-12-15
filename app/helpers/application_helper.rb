module ApplicationHelper

  def which_type_list(locale)
    @types_en = {own: 'Own', foreign: 'Foreign', flood:  'Flood'} 
    @types_ru = {own: 'Sv', foreign: 'Ch', flood: 'Raz'}
    locale == :en ? @types_en : @types_ru
  end

  def link_for_lang(locale)
    locale.to_s == 'en' ? lang = :ru : lang = :en
    link_to Refinery::I18n.locales[lang], refinery.url_for(:locale => lang)
  end

end
