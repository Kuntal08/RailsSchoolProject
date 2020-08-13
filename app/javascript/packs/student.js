// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.



$('#student_birth_date').on('change',function(){
  var mdate = $("#student_birth_date").val().toString();
  var yearThen = parseInt(mdate.substring(0,4), 10);
  var monthThen = parseInt(mdate.substring(5,7), 10);
  var dayThen = parseInt(mdate.substring(8,10), 10);

  var today = new Date();
  var birthday = new Date(yearThen, monthThen-1, dayThen);
  var differenceInMilisecond = today.valueOf() - birthday.valueOf();

  var year_age = Math.floor(differenceInMilisecond / 31536000000);

  $('.input-section #student_age').val(year_age);
});



// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
