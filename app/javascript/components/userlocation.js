import GMaps from 'gmaps/gmaps.js';

const getUserLocation = function () {

    const input = document.getElementById("user-location");
    console.log('function started');
    if (input) {
      console.log('inside if')
      GMaps.geolocate({
        success: function(position) {
          let userLocation = {
            lat: position.coords.latitude,
            lng: position.coords.longitude,
          }


          input.value = JSON.stringify(userLocation),
          console.log(input)

          // map.setCenter(lat, lng);
          // map.addMarker({ lat: lat, lng: lng});
        },
        error: function(error) {
          alert('Geolocation failed: '+error.message);
        },
        not_supported: function() {
          alert("Your browser does not support geolocation");
        }
      });
    }
}


export default getUserLocation;
