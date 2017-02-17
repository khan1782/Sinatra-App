$(document).ready(function() {

  var menuItemCount = 0
$("#new-ingredient-button").on("click", function(event){
  event.preventDefault();
    menuItemCount +=1
  $("#ingredient-inputs").prepend("<label>Ingredient: </label><input name='ingredient[" + menuItemCount.toString() + "[name]]'> <label>Unit: </label><input type='text' name='ingredient[" + menuItemCount.toString() + "[unit_type]]'><br><br>")
  console.log("HA")
})

});
