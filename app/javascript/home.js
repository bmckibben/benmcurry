$(document).ready(function () {
  
  var line_count = 0;
  var readout_height = $("#readout").height();
  var arSVG = get_svg();
  var previous_display = $("#num_list").html();
  var new_line 
  var r
  var delete_pos
  var newline

  //gen_random();
  var si = setInterval(gen_random, 500);

  function gen_random() {
    
    if ($("#num_list").height() > (readout_height-10)){
      delete_pos = previous_display.indexOf("<br>");
      previous_display = previous_display.slice(delete_pos+1);
      $('#readout').find('span').first().remove();
    }else{
      line_count += 1;
    }
    new_line = "<span>"
    for (let i=0; i < arSVG.length; i++) {
      r = randomDigit(11);
      new_line = new_line + arSVG[r];

    }
    newline = new_line + "</span>"
    $("#num_list").append(newline)
  };

  function randomDigit(l) {
    return Math.floor(Math.random() * Math.floor(l));
  }


  function get_svg() {
    var svgs = [];
    svgs.push('<svg version="1.0" xmlns="http://www.w3.org/2000/svg" width="100.000000pt" height="100.000000pt" viewBox="0 0 100.000000 100.000000" preserveAspectRatio="xMidYMid meet"> <g transform="translate(0.000000,100.000000) scale(0.100000,-0.100000)" fill="#ffffff" stroke="none"> <path d="M130 500 l0 -500 385 0 385 0 0 500 0 500 -50 0 -50 0 0 -450 0 -450 -285 0 -285 0 0 240 0 239 79 3 78 3 -76 207 -76 208 -52 0 -53 0 0 -500z"/> </g></svg>');
    svgs.push('<svg version="1.0" xmlns="http://www.w3.org/2000/svg" width="100.000000pt" height="100.000000pt" viewBox="0 0 100.000000 100.000000" preserveAspectRatio="xMidYMid meet"> <g transform="translate(0.000000,100.000000) scale(0.100000,-0.100000)" fill="#ffffff" stroke="none"> <path d="M260 950 l0 -50 90 0 90 0 0 -450 0 -450 130 0 130 0 -33 67 c-19 38 -39 90 -46 117 -7 26 -26 78 -44 115 l-32 66 -3 318 -3 317 -140 0 -139 0 0 -50z"/> </g> </svg>');
    svgs.push('<svg version="1.0" xmlns="http://www.w3.org/2000/svg" width="100.000000pt" height="100.000000pt" viewBox="0 0 100.000000 100.000000"  preserveAspectRatio="xMidYMid meet"> <g transform="translate(0.000000,100.000000) scale(0.100000,-0.100000)" fill="#ffffff" stroke="none"> <path d="M510 950 l0 -50 145 0 145 0 0 -140 0 -140 -345 0 -345 0 0 -45 0 -45 345 0 345 0 0 -64 c0 -46 -15 -120 -50 -253 -28 -103 -52 -194 -55 -200 -3 -10 21 -13 100 -13 l105 0 0 500 0 500 -195 0 -195 0 0 -50z"/></g></svg>');
    svgs.push('<svg version="1.0" xmlns="http://www.w3.org/2000/svg" width="100.000000pt" height="100.000000pt" viewBox="0 0 100.000000 100.000000" preserveAspectRatio="xMidYMid meet"><g transform="translate(0.000000,100.000000) scale(0.100000,-0.100000)" fill="#ffffff" stroke="none"> <path d="M183 863 c52 -76 190 -277 306 -448 l212 -310 -145 -3 -145 -3 -151 76 -150 75 0 -125 0 -125 390 0 c369 0 390 1 381 18 -6 9 -158 233 -339 497 l-328 480 -63 3 -62 3 94 -138z"/></g></svg>');
    svgs.push('<svg version="1.0" xmlns="http://www.w3.org/2000/svg" width="100.000000pt" height="100.000000pt" viewBox="0 0 100.000000 100.000000"  preserveAspectRatio="xMidYMid meet"> <g transform="translate(0.000000,100.000000) scale(0.100000,-0.100000)" fill="#ffffff" stroke="none"> <path d="M102 983 c4 -19 31 -42 325 -266 l202 -154 -259 -8 -260 -7 0 -274 0 -274 360 0 360 0 0 48 0 47 -163 66 -162 67 -3 -69 -3 -69 -144 0 -145 0 0 178 0 179 113 6 c61 4 199 7 305 7 l192 0 0 38 c0 48 9 41 -327 296 l-272 206 -61 0 c-53 0 -61 -2 -58 -17z"/> </g> </svg>');
    svgs.push('<svg version="1.0" xmlns="http://www.w3.org/2000/svg" width="100.000000pt" height="100.000000pt" viewBox="0 0 100.000000 100.000000" preserveAspectRatio="xMidYMid meet"><g transform="translate(0.000000,100.000000) scale(0.100000,-0.100000)"fill="#ffffff" stroke="none"> <path d="M130 875 l0 -125 23 9 c12 5 99 41 194 80 l172 71 126 0 125 0 0 -175 0 -175 -320 0 -320 0 0 -280 0 -280 370 0 370 0 0 50 0 50 -320 0 -320 0 0 180 0 180 320 0 320 0 0 270 0 270 -370 0 -370 0 0 -125z"/></g></svg>');      
    svgs.push('<svg version="1.0" xmlns="http://www.w3.org/2000/svg" width="100.000000pt" height="100.000000pt" viewBox="0 0 100.000000 100.000000" preserveAspectRatio="xMidYMid meet"><g transform="translate(0.000000,100.000000) scale(0.100000,-0.100000)"fill="#ffffff" stroke="none"> <path d="M80 950 l0 -50 360 0 360 0 0 -165 0 -165 -360 0 -360 0 0 -49 0 -49 159 -118 c158 -119 158 -119 236 -237 l78 -117 159 0 160 0 -108 83 c-60 46 -199 150 -308 233 l-199 149 321 3 322 2 0 265 0 265 -410 0 -410 0 0 -50z"/></g></svg>');
    svgs.push('<svg version="1.0" xmlns="http://www.w3.org/2000/svg" width="100.000000pt" height="100.000000pt" viewBox="0 0 100.000000 100.000000" preserveAspectRatio="xMidYMid meet"><g transform="translate(0.000000,100.000000) scale(0.100000,-0.100000)"fill="#ffffff" stroke="none"> <path d="M91 748 l0 -253 315 -248 315 -248 78 3 77 3 -343 270 -342 270 -1 178 0 177 144 0 144 0 208 -70 c115 -38 210 -70 211 -70 2 0 3 54 3 120 l0 120 -405 0 -405 0 1 -252z"/></g></svg>');      
    svgs.push('<svg version="1.0" xmlns="http://www.w3.org/2000/svg" width="100.000000pt" height="100.000000pt" viewBox="0 0 100.000000 100.000000" preserveAspectRatio="xMidYMid meet"><g transform="translate(0.000000,100.000000) scale(0.100000,-0.100000)"fill="#ffffff" stroke="none"> <path d="M80 500 l0 -500 410 0 410 0 0 101 c0 91 -2 100 -17 95 -10 -3 -104 -26 -209 -51 -183 -43 -197 -45 -342 -45 l-152 0 0 180 0 180 210 0 210 0 0 45 0 45 -210 0 -210 0 0 225 0 225 -50 0 -50 0 0 -500z"/></g></svg>');
    svgs.push('<svg version="1.0" xmlns="http://www.w3.org/2000/svg" width="100.000000pt" height="100.000000pt" viewBox="0 0 100.000000 100.000000" preserveAspectRatio="xMidYMid meet"><g transform="translate(0.000000,100.000000) scale(0.100000,-0.100000)"fill="#ffffff" stroke="none"> <path d="M100 503 c0 -423 2 -495 14 -483 15 16 707 946 720 968 5 9 -8 12 -53 12 l-60 0 -258 -346 -258 -345 -3 144 -3 144 51 189 c28 104 52 195 55 202 3 9 -21 12 -100 12 l-105 0 0 -497z"/></g></svg>');
    svgs.push('<svg version="1.0" xmlns="http://www.w3.org/2000/svg" width="100.000000pt" height="100.000000pt" viewBox="0 0 100.000000 100.000000" preserveAspectRatio="xMidYMid meet"><g transform="translate(0.000000,100.000000) scale(0.100000,-0.100000)"fill="#ffffff" stroke="none"> <path d="M160 500 l0 -500 60 0 59 0 258 346 258 345 2 -148 2 -148 -52 -195-53 -195 99 -3 c55 -1 101 -1 103 1 2 2 3 226 2 497 l-3 494 -322 -433 -323-433 0 436 0 436 -45 0 -45 0 0 -500z"/></g></svg>');
    return svgs;
  }

  $("#whd").on("click", function(){
    $("#whd_modal").fadeToggle();
  })

  $(".close").on("click", function(){
    $(this).closest('.modal').fadeToggle();
  })


  var top_header = $(".parallax-content");
  top_header.css({ "background-position": "center center" });
  $(window).scroll(function() {
    var st = $(this).scrollTop();
    top_header.css({ "background-position": "center calc(50% + " + st * 0.5 + "px)" });
  });

  // comment
})