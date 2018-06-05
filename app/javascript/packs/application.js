import "bootstrap";

import { slide, slide_with_ticks } from "../components/slider";

slide();
slide_with_ticks();


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
