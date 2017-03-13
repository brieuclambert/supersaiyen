$('.categorie-design span.radio input').change(function(){
  if ($(this).is(':checked')) {
    $(this).addClass('checked');
    console.log("condition1 working;");
  } else {
    $(this).removeClass('checked');
    console.log("condition2 working;");
  }
});


$('.form-group.client_categorie span.radio').has('input:checked').addClass("checked");


// SELECTIONNER TOUS LES INPUT REQUIRED
$('form#new_client input:not([type=hidden])').attr('required',true).each(function() {
  $(this).keyup(function() {
    console.log(this);
    if ($(this).val() == "") {
    } else {
      console.log("ok");
    }
    console.log("changing");
  });
});


$('form#new_client input:not([type=hidden])').keyup(function(){
  var msgError = "";
  $('form#new_client input:not([type=hidden])').attr('required',true).each(function() {
    if ($(this).val() == "") {
      msgError = msgError + $(this).attr('placeholder') + ", ";
    };
  });
  if (msgError != "") {
    msgError = "Champs manquants : " + msgError;
  }
  console.log(msgError);
});


$('form#new_client input[type=submit]').attr("disabled", true);

$('form#new_client input').keyup(function(){
  var msgError = "";
  var badFormat = "";
  var email = new RegExp('^([A-Z|a-z|0-9](\.|_){0,1})+[A-Z|a-z|0-9]\@([A-Z|a-z|0-9])+((\.){0,1}[A-Z|a-z|0-9]){2}\.[a-z]{2,3}$');
  var portable = new RegExp('^[0-9]{10}$');

  $('form#new_client input:not([type=hidden])').attr('required',true).each(function() {
    if ($(this).val() == "") {
      msgError = msgError + $(this).attr('placeholder') + ", ";
    };
  });

  if (msgError != "") {
    msgError = "<b>Champs manquants</b> : <br>" + msgError;
  };

  if (!portable.test($('form#new_client input#client_portable').val())) {
    badFormat = "Portable,";
    $('form#new_client input#client_portable').addClass("form-error");
  } else {
    $('form#new_client input#client_portable').removeClass("form-error");
  };

  if (!email.test($('form#new_client input#client_mail').val())) {
    badFormat = badFormat + " Email";
    $('form#new_client input#client_mail').addClass("form-error");
  } else {
    $('form#new_client input#client_mail').removeClass("form-error");
  };

  if (badFormat != "") {
    if (msgError != "") {
      msgError = msgError + "<br><b>Mauvais format</b> : <br>" + badFormat;
    } else {
      msgError = "<b>Mauvais format</b> : <br>" + badFormat;
    };
  };

  if (msgError != "") {
    $('#message-error').html(msgError);
    $('form#new_client input[type=submit]').attr("disabled", true);
  } else {
    $('#message-error').html("");
    $('form#new_client input[type=submit]').attr("disabled", false);
  };
});
