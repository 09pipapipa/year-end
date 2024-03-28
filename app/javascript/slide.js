document.addEventListener("turbolinks:before-cache",function(){
  $('.slider.slick-initialized').slick('unslick');
})

$(document).ready(function(){
  $('.slider').slick({
    accessibility: false,
    autoplay:true,
    infinite:true,
    autoplaySpeed:3000,
    arrows: false,
    slidesToScroll:1,
    fade:true,
    pauseOnHover:false,
  });
});