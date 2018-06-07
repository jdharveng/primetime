function display_map() {
  // document.getElementById('map').style.display = "none";
  const map_button = document.getElementById('map-button');
  console.log('blah before');

  map_button.onclick = function () {
    console.log('blah onclick');
    var x = document.getElementById('activity-map');
    console.log('blah x', x, x.class);

    if (x.classList.contains("map-start")) {
        console.log('blah map-start');
        x.classList.remove("map-start");
        x.classList.add("map-end");

    } else {
        console.log('blah map-end');
        x.classList.remove("map-end");
         x.classList.add("map-start");
    }
  }
}


export { display_map }
