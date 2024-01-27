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
		  //return false;
		}
	}
	$( "#clinic-onboard-form" ).accWizard(options);

    var currentAddressIndex = 0;

    $('.add-more-address').click(function() {
        var lastAddress = $('.practice-address:last');
        var newAddress = lastAddress.clone();
        newAddress.find('input').val('');

        newAddress.find('input').each(function() {
            var fieldName = $(this).attr('name');
            fieldName = fieldName.replace(/\[\d+\]/g, '[' + (currentAddressIndex + 1) + ']');
            $(this).attr('name', fieldName);
        });
        newAddress.insertAfter(lastAddress);
        newAddress.find('.remove-address').show();
        currentAddressIndex++;
    });

    $(document).on('click', '.remove-address', function() {
        $(this).closest('.practice-address').remove();
        currentAddressIndex--;
    });

    var currentProviderIndex = 0;

    $('.add-more-provider').click(function() {
        var lastProvider = $('.providers:last');
        var newProvider = lastProvider.clone();
        newProvider.find('input').val('');

        newProvider.find('input').each(function() {
            var fieldName = $(this).attr('name');
            fieldName = fieldName.replace(/\[\d+\]/g, '[' + (currentProviderIndex + 1) + ']');
            $(this).attr('name', fieldName);
        });

        var providerNameSelect = newProvider.find('select[name^="providers[' + (currentProviderIndex) + '][provider_name]"]');
        var newProviderNameSelect = providerNameSelect.clone();
        newProviderNameSelect.attr('name', 'providers[' + (currentProviderIndex + 1) + '][provider_name]');
        providerNameSelect.replaceWith(newProviderNameSelect);

        var specialtySelect = newProvider.find('select[name^="providers[' + (currentProviderIndex) + '][speciality]"]');
        var newSpecialtySelect = specialtySelect.clone();
        newSpecialtySelect.attr('name', 'providers[' + (currentProviderIndex + 1) + '][speciality]');
        specialtySelect.replaceWith(newSpecialtySelect);

        newProvider.insertAfter(lastProvider);
        newProvider.find('.remove-provider').show();
        currentProviderIndex++;
    });

    $(document).on('click', '.remove-provider', function() {
        $(this).closest('.providers').remove();
        currentProviderIndex--;
    });

    function reindexAddresses() {
        $('.practice-address').each(function(index) {
            var newIndex = index;
            $(this).find('input').each(function() {
                var fieldName = $(this).attr('name');
                // Update the index in the name attribute
                fieldName = fieldName.replace(/\[\d+\]/g, '[' + newIndex + ']');
                $(this).attr('name', fieldName);
            });
        });
    }

    function reindexProviders() {
        $('.providers').each(function(index) {
            var newIndex = index;
            $(this).find('input, select').each(function() {
                var fieldName = $(this).attr('name');
                // Update the index in the name attribute
                fieldName = fieldName.replace(/\[\d+\]/g, '[' + newIndex + ']');
                $(this).attr('name', fieldName);
            });
        });
    }

    function submitFormData() {
        reindexAddresses();
        reindexProviders();
        var formData = $("#clinic-onboard-form").serializeArray();
        var clinicId = $("input[name='clinic_id']").val();
        var addresses = [];
        var providers = [];

        $('.providers').each(function(index) {
            var provider = {};
            $(this).find('input, select').each(function() {
                var fieldName = $(this).attr('name');
                provider[fieldName] = $(this).val();
            });
            providers.push(provider);
        });

        $('.practice-address').each(function(index) {
            var address = {};
            $(this).find('input').each(function() {
                var fieldName = $(this).attr('name');
                address[fieldName] = $(this).val();
            });
            addresses.push(address);
        });

        var addressesJSON = JSON.stringify(addresses);
        var providersJSON = JSON.stringify(providers);
        // Include addresses in the form data
        formData.push({ name: 'practice_address', value: addressesJSON  });
        formData.push({ name: 'providers', value: providersJSON  });
        //console.log(formData);return false;

        if(clinicId && clinicId!='' && clinicId!=null){
            var setUrl = '/clinic/update/' + clinicId;
            var type =  'PUT';
        }else{
            var setUrl = '/clinic/store';
            var type = 'POST';
        }
        $.ajax({
            url: setUrl,
            type: type,
            data: formData,
            dataType: 'json',
            success: function(response) {
                console.log(response);
                $('#clinic-success').removeClass('d-none');
                $('#clinic-success').show();

                setTimeout(function() {
                    window.location.href = '/clinics';
                }, 1000);

            },
            error: function(error) {
                // Handle error response
                alert('Error submitting form.');
            }
        });
    }


})(jQuery);
