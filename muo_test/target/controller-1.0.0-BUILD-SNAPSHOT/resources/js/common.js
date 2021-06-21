$(document).ready(function(){
    var main = '.topNav';
    var sub = '.subNav';
    var speed = 'fast';
    
    $(main).mouseenter(function(){
        $(this).next().stop().slideDown(speed); 
        $(this).addClass('on'); 
        
        $(this).parent().mouseleave(function(){
            $(this).find(sub).stop().slideUp(speed);  
            $(this).find(main).removeClass('on');
        });
        
    });
    
    //
    $(sub).stop().slideUp(0); 
    

    $(main).focus(function(){
        $(this).next().stop().slideDown(speed);
        $(this).addClass('on');
    });
    
    $(main).keydown(function(e){
        if(e.keyCode == 9){ 
            if(e.shiftKey){ 
                $(this).next().stop().slideUp(speed);
                $(this).removeClass('on');
            }
        }
    });
    
    $(sub).find('li:last a').keydown(function(e){
        if(e.keyCode == 9){ 
            if(!e.shiftKey){
                $(this).parents(sub).stop().slideUp(speed);
                $(this).parents(sub).prev().removeClass('on');
            }
        }
    });  
});


//
$(document).ready(function(){
    var btn = '.top_btn a';
    var btn2 = '.bottom_btn a';
    var speed = 1700; 
    var easing = 'easeOutQuart';
   
    $(btn).click(function(e){
        e.preventDefault();  
        $('html, body').stop().animate({
            scrollTop: 0
        },speed,easing);
    });
    $(btn2).click(function(e){
        e.preventDefault();  
        $('html, body').stop().animate({
            scrollTop:2500
        },speed,easing);
    });
});


$(function(){
	var swiper = new Swiper(".mySwiper", {
        scrollbar: {
          el: ".swiper-scrollbar",
          hide: true,
        },autoplay: {
          delay: 2500,
          disableOnInteraction: false,
        }
      });
});


//
$(window).scroll(function(){

    var top = $(window).scrollTop();

    if(top>0){
        $('.hTop').fadeOut('fast');
    }else{
        $('.hTop').fadeIn('fast');
    }

});







