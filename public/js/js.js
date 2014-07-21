function resize_logo () {
  var left=($(window).width()-$('#logo').find('a').find('img').width())/2;
  left<0 ? left=0 : left
  $('#logo').css('left', left+"px") 
};
$(document).ready(resize_logo);
$(window).resize(resize_logo);