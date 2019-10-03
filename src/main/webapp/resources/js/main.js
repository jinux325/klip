$(document).ready(function(){
	
	// Tab Current Click
	$('ul.tabs li').click(function(){
		var tab_id = $(this).attr('data-tab');

		$('ul.tabs li').removeClass('current');
		$('.tab-content').removeClass('current');

		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
	});

	// Table tr Click Event
  $('#cnstr-table tr').click( function(){
    var selected = $(this).hasClass("highlight");

    $('#cnstr-table tr').removeClass("highlight");

    if (!selected) $(this).addClass("highlight");
  });

});
