module ApplicationHelper\
   def header_menu
    menu = Refinery::Pages::MenuPresenter.new(refinery_menu_pages, self)
    menu.menu_tag = :div
    menu.css = "row clearfix"
    menu.list_tag = "ul class='sf-menu'"
    menu
  end
end
