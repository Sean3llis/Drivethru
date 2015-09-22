// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
(function($){ $(window).ready(function(){
	$cal = $('#cal');
	($cal.length > 0) ? initCal($cal) : null;
	setEditListeners();
	hideNotice();


})

function initCal(cal) {
	cal.fullCalendar({
		events: '/vendors/1/events'
	});
}

function hideNotice() {
	$notice = $('#notice');
	if($notice.length > 0){
		$notice.delay(2000).hide('slow');
	}
}

function setEditListeners(){
	$('.remove_fields').on('click', function(){
		$(this).parent('.field-group').hide('slow');
	})
}

})(jQuery)