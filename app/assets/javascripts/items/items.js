$('form#new_item input[type=submit]').attr("disabled", true);
$("#item_content").keyup(function() {
  if ($(this).val() == "") {
    $('form#new_item input[type=submit]').attr("disabled", true);
  } else {
    $('form#new_item input[type=submit]').attr("disabled", false);
  };
});



// $("#myTextBox").bind("change paste keyup", function() {
//    alert($(this).val());
// });
