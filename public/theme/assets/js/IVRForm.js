(function($) {
	"use strict";

	//accordion-wizard
	var options = {
		mode: 'wizard',
		autoButtonsNextClass: 'btn btn-primary float-right',
		autoButtonsPrevClass: 'btn btn-info',
		stepNumberClass: 'badge badge-pill badge-primary mr-1',
		onSubmit: function() {
            submitFormData();
		}
	}
	$( "#ivr-form" ).accWizard(options);
    function submitFormData() {

        var formData = $("#ivr-form").serializeArray();
        //console.log(formData);return false;
        var ivrId = $("input[name='ivr_id']").val();
        if(ivrId && ivrId!='' && ivrId!=null){
            var setUrl = '/ivr/update/' + ivrId;
            var type =  'PUT';
        }else{
            var setUrl = '/ivr/store';
            var type = 'POST';
        }
        $.ajax({
            url: setUrl,
            type: type,
            data: formData,
            dataType: 'json',
            success: function(response) {
                $('#ivr-success').removeClass('d-none');
                $('#ivr-success').show();

                setTimeout(function() {
                    window.location.href = '/ivrs';
                }, 2000);

            },
            error: function(error) {
                // Handle error response
                alert('Error submitting form.');
            }
        });
    }


})(jQuery);
