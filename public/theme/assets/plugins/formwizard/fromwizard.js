(function($) {
	"use strict";

	// Toolbar extra buttons
	var btnFinish = $('<button></button>').text('Finish')
		.addClass('btn btn-success')
		.on('click', function(){
            var formData = {};
            var currentStep = $('#smartwizard').smartWizard("getStepIndex");

            // Collect data from the current step's form fields
            if (currentStep === 0) {
                formData.email = $('#exampleInputEmail13').val();
                formData.password = $('#exampleInputPassword16').val();
            } else if (currentStep === 1) {
                formData.username = $('#inputtext3').val();
                formData.email = $('input[type="email"]').eq(1).val(); // Use eq(1) to target the second email input
                formData.password = $('input[type="password"]').eq(1).val(); // Use eq(1) to target the second password input
            }

            // Send form data to Laravel backend using AJAX
            $.ajax({
                type: "POST",
                url: "/submit-form", // Replace with your Laravel route
                data: formData,
                success: function(response) {
                    // Handle the response from the server if needed
                    console.log(response);
                },
                error: function(xhr, status, error) {
                    // Handle errors if needed
                    console.error(error);
                }
            });
        });

	var btnCancel = $('<button></button>').text('Cancel')
		.addClass('btn btn-danger')
		.on('click', function(){ $('#smartwizard').smartWizard("reset"); });


	// Smart Wizard
	$('#smartwizard').smartWizard({
			selected: 0,
			theme: 'default',
			transitionEffect:'fade',
			showStepURLhash: true,
			toolbarSettings: {
							  toolbarButtonPosition: 'end',
							  toolbarExtraButtons: [btnFinish, btnCancel]
							}
	});

	// Arrows Smart Wizard 1
	$('#smartwizard-1').smartWizard({
			selected: 0,
			theme: 'arrows',
			transitionEffect:'fade',
			showStepURLhash: false,
			toolbarSettings: {
							  toolbarExtraButtons: [btnFinish, btnCancel]
							}
	});

	// Circles Smart Wizard 1
	$('#smartwizard-2').smartWizard({
			selected: 0,
			theme: 'circles',
			transitionEffect:'fade',
			showStepURLhash: false,
			toolbarSettings: {
							  toolbarExtraButtons: [btnFinish, btnCancel]
							}
	});

	// Dots Smart Wizard 1
	$('#smartwizard-3').smartWizard({
			selected: 0,
			theme: 'dots',
			transitionEffect:'fade',
			showStepURLhash: false,
			toolbarSettings: {
							  toolbarExtraButtons: [btnFinish, btnCancel]
							}
	});

})(jQuery);
