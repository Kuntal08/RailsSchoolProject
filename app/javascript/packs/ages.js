// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

var fromDate;
$('#age_date_from').on('change', function() {
  fromDate = $(this).val();
  $('#age_date_to').prop('min', function(){
    return fromDate;
  })
});

var toDate;
$('#age_date_to').on('change', function() {
  toDate = $(this).val();
  $('#age_date_from').prop('max', function(){
    return toDate;
  })
});

$(document).ready(function(){
    $("#age_date_as, #age_date_from, #age_date_to").on('change',function(){
        var mdate1 = $("#age_date_from").val().toString();
        var yearThen1 = parseInt(mdate1.substring(0,4), 10);
        var monthThen1 = parseInt(mdate1.substring(5,7), 10);
        var dayThen1 = parseInt(mdate1.substring(8,10), 10);

        var mdate2 = $("#age_date_to").val().toString();
        var yearThen2 = parseInt(mdate2.substring(0,4), 10);
        var monthThen2 = parseInt(mdate2.substring(5,7), 10);
        var dayThen2 = parseInt(mdate2.substring(8,10), 10);

        var today =  $("#age_date_as").val().toString();
        var yearNow = parseInt(today.substring(0,4), 10);
        var monthNow = parseInt(today.substring(5,7), 10);
        var dayNow = parseInt(today.substring(8,10), 10);

        var diffYear1 = yearNow-yearThen1;
        var diffYear2 = yearNow-yearThen2;

        if(monthNow<monthThen1){
          diffYear1 = diffYear1-1;
        }
        if((dayNow<dayThen1) && (monthNow==monthThen1)) {
          diffYear1 = diffYear1-1;
        }
        if((yearThen1==yearNow) && (monthThen1==monthNow) && (dayThen1==dayNow)){
          $("#age_age_from").val(0);
        }
        else{
          $("#age_age_from").val(diffYear1);
        }

        if(monthNow<monthThen2){
          diffYear2 = diffYear2-1;
        }
        if((dayNow<dayThen2) && (monthNow==monthThen2)) {
          diffYear2 = diffYear2-1;
        }
        if((yearThen2==yearNow) && (monthThen2==monthNow) && (dayThen2==dayNow)){
          $("#age_age_to").val(0);
        }
        else{
          $("#age_age_to").val(diffYear2);
        }
    });
});

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
