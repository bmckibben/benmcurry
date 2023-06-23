$(document).ready(function() {

  // $(".sidebar-toggle").click(function() {

  //   $("#mySidenav").toggleClass("sidenav-collapsed sidenav-open");
  //   $("#main").toggleClass("main-open main-collapsed");
  //   $(".sidebar-toggle").toggleClass("fa-chevron-right fa-chevron-left");

  // });

	bindSidebarActions();

	$('[data-toggle="tooltip"]').tooltip();
	// requires in <i>:
	// data-toggle='tooltip' data-placement='left' title='title'

}) //document.ready


function bindSidebarActions() {

  $('i.tree-toggler').click(function () {
    $(this).parent().children('ul.tree').toggle(300);
    $(this).toggleClass('bi-caret-right-fill bi-caret-down-fill')
  });

  $('#wiki-search').click(function () {
    $('#search-form').submit();
  });    

}

