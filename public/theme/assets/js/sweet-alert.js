$(function(e) {

	// Confirm
    $(document).on("click", "#confirm", function(e) {
        swal({
            title: "Alert",
            text: "Are you really want to exit",
            type: "warning",
            showCancelButton: true,
            confirmButtonText: 'Exit',
            cancelButtonText: 'Stay on the page'
        }, function(result) {
            if (result) {
                // User clicked the "Exit" button
                // Add your code here to handle the exit action
                console.log("User confirmed exit");
            } else {
                // User clicked the "Stay on the page" button or closed the dialog
                // Add your code here to handle staying on the page
                console.log("User decided to stay on the page");
            }
        });
    });

});
