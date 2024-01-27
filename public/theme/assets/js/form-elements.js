$(function(e) {
	'use strict'

	// Toggles
	$('.toggle').toggles({
		on: true,
		height: 26
	});

	// Input Masks
	$('#dateMask').mask('99/99/9999');
	$('#phoneMask').mask('(999) 999-9999');
	$('#ssnMask').mask('999-99-9999');

	// Time Picker
	$('#tpBasic').timepicker();
	$('#tp2').timepicker({
		'scrollDefault': 'now'
	});

	$('#tp3').timepicker();

	$(document).on('click', '#setTimeButton', function() {
		$('#tp3').timepicker('setTime', new Date());
	});


	// Color picker
	$('#colorpicker').spectrum({
		color: '#0061da'
	});
	$('#showAlpha').spectrum({
		color: 'rgba(0, 97, 218, 0.5)',
		showAlpha: true
	});
	$('#showPaletteOnly').spectrum({
		showPaletteOnly: true,
		showPalette: true,
		color: '#DC3545',
		palette: [
			['#1D2939', '#fff', '#0866C6', '#23BF08', '#F49917'],
			['#DC3545', '#17A2B8', '#6610F2', '#fa1e81', '#72e7a6']
		]
	});

	//Date range picker
	$('#reservation').daterangepicker();

    var dateToday = new Date();
    var startYear = dateToday.getFullYear() - 100; // Subtract 100 years from the current year
    var endYear = dateToday.getFullYear(); // Current year

	// Datepicker
    $('.fc-datepicker').datepicker({
        changeMonth: true,
        changeYear: true,
        dateFormat: 'mm-dd-yy',
        duration: 'fast',
        stepMonths: 0,
        yearRange: startYear + ':' + endYear, // Set the year range to past years
    });
	$('#datepickerNoOfMonths').datepicker({
		showOtherMonths: true,
		selectOtherMonths: true,
		numberOfMonths: 2
	});
});
