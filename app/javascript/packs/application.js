import "bootstrap";
import initMap from '../components/map';

const showPage = document.querySelector('.activities.show');
if (showPage) {
  const mapElement = document.getElementById('map');
  initMap(mapElement);
}
