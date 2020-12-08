// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require bootstrap-sprockets
//= require jquery3
//= require jquery_ujs
//= require jquery.validate
//= require activestorage
//= require turbolinks
//= require_tree .

function ValidateContactForm()
{
  $("#contact_id").validate({
    errorClass: "error fail-alert",
    validClass: "valid success-alert",
    rules: {
      name: {
        required: true,
        minlength: 3
      },
      email: {
        required: true,
        email: true,
        maxlength: 255,
      },
      telephone: {
        required: true,
        number: true,
        maxlength: 12,
        min: 0,
      },
      message: 'required',
    },
    messages : {
      name: {
        minlength: "Name should be at least 3 characters"
      },
      email: {
        required: "Please enter your email",
        email: "The email should be in the format: abc@email.tld",
        maxlength: "The email should be shorter"
      },
      telephone: {
        required: "Please enter your telephone number",
        number: "Please enter a number",
        maxlength: "Number must be 12 numbers long at most",
        min: "Do not enter negative numbers"
      }
    }
  });
}
$(document).ready(function(){
  if(document.getElementById('contact_id'))
  {
    ValidateContactForm();
  }
});
