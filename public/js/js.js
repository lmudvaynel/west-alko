var counter=[],
    countWidth,
    floorCount=[],
    ceilCount=[],
    winWidth
function resize_logo() {
  var left=($(window).width()-$('#logo').find('a').find('img').width())/2;
  left<0 ? left=0 : left
  $('#logo').css('left', left+"px") 
};
window.onload=resize_logo();
$(window).resize(resize_logo);
$(document).ready(function (){
  var imgHeight=$('.image').find('ul li').length*212;
    $('.image').css('width',imgHeight + 'px')
  countWidth=(Math.floor(1060/212));
  ceilCount[0]=Math.ceil($('.image').find('ul li').length/countWidth);
  floorCount[0]=Math.floor($('.image').find('ul li').length/countWidth);
})
function left_click (index) {
  counter[index]==undefined ? counter[index]=0 : counter[index]
  if (counter[index]==0) 
    {$('.image').eq(index).stop()
      .animate({ left: 212+'px'},250);
    setTimeout(function(){
      $('.image').eq(index).stop()
      .animate({ left: 0+'px' },250);
    }, 250);}
  else
    { counter[index]--;
    $('.image').eq(index).stop()
      .animate({left: -counter[index]*countWidth*212+'px' },1500);} 
}

function right_click (index) {
  
  counter[index]==undefined ? counter[index]=0 : counter[index]
  if ((counter[index]==ceilCount[index]-1)||((floorCount[index]==ceilCount[index])&&(floorCount[index]==1)))
    {$('.image').eq(index).stop()
      .animate({left: -($('.image').eq(index).find('ul li').length-(countWidth))*212-212+'px'},250);
    setTimeout(function(){
      $('.image').eq(index).stop()
        .animate({left: -($('.image').eq(index).find('ul li').length-(countWidth))*212+'px'},250);
      }, 250);
    }
  else {
    if ((floorCount[index]==counter[index]+1)&&(floorCount[index]!=ceilCount[index]))
    { counter[index]++
      $('.image').eq(index).stop()
            .animate({left: -($('.image').eq(index).find('ul li').length-(countWidth))*212+'px'},1500);}
    else
    { if (counter[index]!=ceilCount[index]-1)
      counter[index]++;
          $('.image').eq(index).stop()
            .animate({left: -counter[index]*countWidth*212+'px'},1500);}
    }
  }