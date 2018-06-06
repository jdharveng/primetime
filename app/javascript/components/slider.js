import Slider from "bootstrap-slider";
import "bootstrap-slider/src/sass/bootstrap-slider.scss"

function slide_with_ticks() {
  if (!document.getElementById('ex13')) return null;

  const slider = new Slider("#ex13", {
      ticks: [0, 100, 200, 300, 400],
      ticks_labels: ['$0', '$100', '$200', '$300', 'Splash it'],
      ticks_snap_bounds: 30,
  });
}


function slide() {
  if (!document.getElementById('ex1')) return null;

  const slider = new Slider('#ex1', {
    formatter: function(value) {
      return 'Current value: ' + value;
    }
  });
}

export { slide, slide_with_ticks };
