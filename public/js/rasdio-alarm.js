function initialize() {
  $("#controls button").click(postControls);
}

function postControls(){
  var action = $(this).attr('data-action');
  $.ajax({
          url:'/controls',
          method:'POST',
          data:{action: action},
          success:function(data) { }
       });
}

$(initialize);