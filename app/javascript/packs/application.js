import "bootstrap";

import { slide, slide_with_ticks } from "../components/slider";

slide();
slide_with_ticks();


const next_button = document.getElementById( 'next-filter' );

next_button.onclick = function() {

  console.log("It's working")
}
