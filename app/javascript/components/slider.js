import Slider from "bootstrap-slider";


function slide_with_ticks() {
  if (!document.getElementById('ex2')) return null;

  // const slider = new Slider("#ex13", {
  //     ticks: [0, 100, 200, 300, 400],
  //     ticks_labels: ['$0', '$100', '$200', '$300', 'Splash it'],
  //     ticks_snap_bounds: 30,
  // });
    const slider = new Slider("#ex2", {});
}


function slide() {
  if (!document.getElementById('ex1')) return null;

  const minsValue = document.getElementById("ex1SliderVal");

  const slider = new Slider('#ex1', {
    formatter: function(value) {
      return 'Current value: ' + value;
      // slider.on("slideStart", function(sliderValue) {
      //   console.log("Sliding")
      //   document.getElementById("ex1SliderVal").textContent = sliderValue;
      // });
    }
  });
  slider.on("slide", function(sliderValue) {
        console.log("Sliding")
        minsValue.innerHTML = sliderValue
      });
    slider.on("slideStop", function(sliderValue) {
        console.log("Sliding")
        minsValue.innerHTML = sliderValue
      });
}

function transition() {
  console.log('function transition started');
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
}

function loadSlides() {
  transition();
  slide();
  slide_with_ticks();
}

export { loadSlides };
