import Slideout from "slideout";

function slideout_use() {
  var slideLeft = new Slideout({
    'panel': document.getElementById('panel'),
    'menu': document.getElementById('menu'),
    'padding': 256,
    'tolerance': 70,
  });

  var slideRight = new Slideout({
    'panel': document.getElementById('panel'),
    'menu': document.getElementById('menu-right'),
    // 'padding': 256,
    // 'tolerance': 70,
    'side': 'right'
  });



slideLeft.on('beforeopen', () => {
    document.getElementById('menu-right').classList.add('slide-hide');
    slideRight.disableTouch();
});

  slideLeft.on('close', () => {
     document.getElementById('menu-right').classList.remove('slide-hide');
    slideRight.enableTouch();
});



  // Toggle button
  document.querySelector('.toggle-button').addEventListener('click', function() {
    slideLeft.toggle();
  });


  slideRight.on('beforeopen', () => {
    document.getElementById('menu').classList.add('slide-hide');
    slideLeft.disableTouch();
  });

  slideRight.on('close', () => {
     document.getElementById('menu').classList.remove('slide-hide');
     slideLeft.enableTouch();
  });

  // Toggle button
  document.querySelector('.toggle-button-right').addEventListener('click', function() {
    slideRight.toggle();
  });

}













export { slideout_use};
