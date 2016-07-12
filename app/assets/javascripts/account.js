$(document).ready(function() {
    var max_fields      = 10; //maximum input boxes allowed
    var wrapper         = $(".input_fields_wrap"); //Fields wrapper
    var phone_input     = $(".phone_input:first"); //Original phone inputs
    var add_button      = $(".add_field_button"); //Add button ID
    var x = 1; //initial text inputs count
    $(add_button).click(function(e){ //on add input button click
        e.preventDefault();
        if(x < max_fields){ //max inputs allowed
            x++; //inputs increment
            $(phone_input).clone().appendTo(wrapper); //Add both phone inputs
            $(wrapper).append('<p><a href="#" class="remove_field">Remove</a></p>'
          ); //add remove button
      }
    });

    $(wrapper).on("click",".remove_field", function(e){ //user click on remove text
      if(x > 0){
        e.preventDefault(); $(this).parent().prev().remove()
        e.preventDefault(); $(this).parent().prev().remove(); x--;
        e.preventDefault(); $(this).remove();
      } else {
        e.preventDefault(); $(this).parent().prev().remove()
        e.preventDefault(); $(this).parent().prev().remove(); x--;
      }
    })
});
