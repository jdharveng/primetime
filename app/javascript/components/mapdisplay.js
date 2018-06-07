function display_map() {
  // document.getElementById('map').style.display = "none";
  const map_button = document.getElementById('map-button');

  map_button.onclick = function () {

    var x = document.getElementById('activity-map');
    var y = document.getElementById('map-close');


    if (x.classList.contains("map-start")) {

        x.classList.remove("map-start");
        x.classList.add("map-end");
        x.style.height = "100vh"
        y.classList.remove("map-start");
        y.classList.add("map-end");

    } else {

        x.classList.remove("map-end");
        x.classList.add("map-start");
        y.classList.remove("map-end");
        y.classList.add("map-start");
    }
  }
}

function hide_map() {
  const map_close = document.getElementById('map-close');

  map_close.onclick = function () {

    var x = document.getElementById('activity-map');
    var y = document.getElementById('map-close');


    if (x.classList.contains("map-end")) {

        x.classList.remove("map-end");
        x.classList.add("map-start");
        x.style.height = "0px"
        y.classList.remove("map-end");
        y.classList.add("map-start");

    } else {

        x.classList.remove("map-start");
        x.classList.add("map-end");
        y.classList.remove("map-start");
        y.classList.add("map-end");

    }
  }
}

export { display_map }
export { hide_map }
