// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
(function($){ $(window).ready(function(){
	$cal = $('#cal');
	($cal.length > 0) ? initCal($cal) : null;

	function initCal(cal) {
		cal.fullCalendar({
			events: [
				{
					id: 1,
					title: "Event 1",
					start: '2015-09-20'
				}
			]
		});
	}
})})(jQuery)