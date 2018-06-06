// app/javascript/components/autocomplete.js
function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var activityAddress = document.getElementById('activity_address');

    if (activityAddress) {
      var autocomplete = new google.maps.places.Autocomplete(activityAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(activityAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
