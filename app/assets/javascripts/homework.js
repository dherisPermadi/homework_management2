var ready;

//method ajax untuk reset data di dropdownlist subcategory
function reset(category_id) {
    $.ajax({
        dataType: "json",
        cache: false,
        url: '/get_sub_category_by_category/' + category_id,
        timeout: 5000,
        error: function(XMLHttpRequest, errorTextStatus, error) {
         alert("Failed to submit : " + errorTextStatus + " ;" + error);
        },
        success: function(data) {
         // #hapus semua list yang ada dalam dropdown subcategory
         $("#homework_sub_category_id option").remove();
         // mengisi list subcategory
         $.each(data, function(i, j) {
          row = "<option value=\"" + j.id + "\">" + j.name + "</option>";
          $(row).appendTo("#homework_sub_category_id");
         });
        }
       });
  }
 
  //method untuk menjalankan proses dropdown dinamis
  ready = function() {
  var category_id=$("#homework_category_id").val();
  if (category_id == "") {
    $("#homework_sub_category_id").empty();
    $("#homework_sub_category_id").parent().hide();
  }
  else {
    reset(category_id);
  }

  $("#homework_category_id").change(function() {
    var category_id2 = $(this).val();
    if (category_id2 == "") {
     $("#homework_sub_category_id option").remove();
     var row = "<option value=\"" + "" + "\">" + "" + "</option>";
     $(row).appendTo("#homework_sub_category_id");
    } else {
     // memanggil method reset
    reset(category_id2);
    }
   });
}

$(document).ready(ready);
$(document).on('page:load', ready);
$(document).on('turbolinks:load', ready);