$(function() {

  //Override the default confirm dialog by rails
  $.rails.allowAction = function(link){
    if (link.data("confirm") == undefined){
      return true;
    }
    $.rails.showConfirmationDialog(link);
    return false;
  }

  //User click confirm button
  $.rails.confirmed = function(link){
    link.data("confirm", null);
    link.trigger("click.rails");
  }

  //Display the confirmation dialog
  $.rails.showConfirmationDialog = function(link){
    var message = link.data("confirm");
    Swal({
      title: message,
      text: "You won't be able to revert this!",
      type: 'warning',
      showCancelButton: true,
      cancelButtonColor: '#c8c8c8',
      confirmButtonColor: "#DD6B55",
      confirmButtonText: 'Yes, delete it!',
      reverseButtons: false
    }).then((result) => {
      if (result.value) {
        $.rails.confirmed(link);
        Swal({
          title: 'Deleted!',
          text: 'Your file has been deleted.',
          type: 'success',
          showConfirmButton: false
        })
      }
    })
  };


});