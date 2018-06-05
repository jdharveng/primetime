import Slider from "bootstrap-slider";
import "bootstrap-slider/src/sass/bootstrap-slider.scss"

function slide_with_ticks() {
  const slider = new Slider("#ex13", {
      ticks: [0, 100, 200, 300, 400],
      ticks_labels: ['$0', '$100', '$200', '$300', 'Splash it'],
      ticks_snap_bounds: 30,
  });
}


function slide() {
  const slider = new Slider('#ex1', {
    formatter: function(value) {
      return 'Current value: ' + value;
    }
  });
}

export { slide, slide_with_ticks };
