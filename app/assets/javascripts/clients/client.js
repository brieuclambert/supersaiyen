$('.categorie-design span.radio input').change(function(){
  if ($(this).is(':checked')) {
    $(this).addClass('checked');
    console.log("condition1 working;");
  } else {
    $(this).removeClass('checked');
    console.log("condition2 working;");
  }
});
