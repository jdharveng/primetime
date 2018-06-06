import "bootstrap";
import initMap from '../components/map';
import { slide, slide_with_ticks } from "../components/slider";
import getUserLocation from '../components/userlocation';

//required for Gmaps to work
window.GMaps = require('gmaps');

const showPage = document.querySelector('.activities.show');
if (showPage) {
  const mapElement = document.getElementById('map');
  initMap(mapElement);
}

const filterPage = document.querySelector('.activities.filters')
console.log(filterPage)
if (filterPage) {
  getUserLocation()
}

import { slideout_use} from "../components/slideout";

slide();
slide_with_ticks();

slideout_use();


const next_button = document.getElementById( 'next-filter' );

document.getElementById("money").style.display = "none";

next_button.onclick = function() {

  console.log("It's working")

  var x = document.getElementById("money");
    if (x.style.display === "none") {
        x.style.display = "block";
        document.getElementById("time").style.display = "none";
    } else {
        x.style.display = "none";
    }
}


