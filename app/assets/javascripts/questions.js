var ready = function() {

    var modal = document.getElementById('myModal');

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    };

    $('#myBtn').click(function() {
        modal.style.display = "block";
    });

    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];

    // When the user clicks on <span> (x), close the modal
    span.onclick = function() {
        modal.style.display = "none";
    };
};

    $('#thumbsup').click(function() {
    });

$(document).ready(ready);
$(document).on('page:load', ready);
