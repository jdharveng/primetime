import "bootstrap";
import "bootstrap-slider/src/sass/bootstrap-slider.scss";
import initMap from '../components/map';
import { loadSlides } from "../components/slider";
import getUserLocation from '../components/userlocation';
import { slideout_use, slideout_right} from "../components/slideout";
import { timer, startTimer } from "../components/countdown";


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





// attribute of Window called app
// that allows you to run JS functions in the HTML views
window.app = {
  loadSlides,
  slideout_use,
  timer,
  startTimer
}


