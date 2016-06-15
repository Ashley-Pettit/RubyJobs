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


    $('.fa-thumbs-o-up').click(function(event) {

        //Update the front-end immediately
        var like_id = event.target;
        like_id.innerHTML = parseInt(like_id.innerHTML) + 1;

        //Update the backend
        var id_thumb = event.target.id;
            var settings = {
                url: '/events/questions/increment_like',
                method: 'post',
                data: {id_thumb}
            };

        $.ajax(settings).done();

    });


};

$(document).ready(ready);
