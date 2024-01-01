$(document).ready(function () {

  $("#btn_add_note").on("click",function(){
    $("#footer_modal").fadeToggle();
  })  

  $("#btn_add_footnote").on("click",function(){
    $("#footer_modal").fadeToggle();
  }) 

  $(".btn_edit_footnote").on("click",function(){
    $("#footer_modal").fadeToggle();
  }) 

  $(".footer_modal_close").on("click", function(){
    $("#footer_modal").fadeToggle();
  })

})