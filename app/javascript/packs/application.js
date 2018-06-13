import "bootstrap";
import "bootstrap-slider/src/sass/bootstrap-slider.scss";
import initMap from '../components/map';
import { loadSlides } from "../components/slider";
import getUserLocation from '../components/userlocation';
import { slideout_use, slideout_right} from "../components/slideout";
import { initTimer } from "../components/countdown";
import { display_map } from "../components/mapdisplay";
import { hide_map } from "../components/mapdisplay";
import { fillStars } from "../components/ratingstar";



//required for Gmaps to work
window.GMaps = require('gmaps');

const showPage = document.querySelector('.activities.show');
if (showPage) {
  const mapElement = document.getElementById('map');
  initMap(mapElement);
}

const filterPage = document.querySelector('.activities.filters')
// console.log(filterPage)
if (filterPage) {
  getUserLocation()
}

const timerPage = document.querySelector('.bookings.bookingtimer');
if (timerPage) {
  initTimer();
}

const ratingPage = document.querySelector('.reviews.new');
// if user doesn't put any stars
const ratingRedirect = document.querySelector('.reviews.create');
if (ratingPage || ratingRedirect) {
  fillStars();
}




// // Filters

 const next_button = document.getElementById( 'next-filter' );





// attribute of Window called app
// that allows you to run JS functions in the HTML views
window.app = {
  loadSlides,
  slideout_use,
  display_map,
  hide_map
}


