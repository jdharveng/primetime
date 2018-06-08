import ProgressBar from 'progressbar.js'

    var circle = new ProgressBar.Circle('#progress', {
        color: '#ee061a',
        trailColor:'ee061a05',
        duration: getDuration(),
        easing: 'linear',
        strokeWidth: 8,
        text: {
          value: formatTime(getDuration()),
          style: {
            // Text color.
            // Default: same as stroke color (options.color)
            color: 'black',
            position: 'absolute',
            left: '50%',
            top: '50%',
            padding: 0,
            margin: 0,
            fontWeight: 'bold',
            fontSize: '70px',
            // You can specify styles which will be browser prefixed
            transform: {
                prefix: true,
                value: 'translate(-50%, -50%)'
            }
          },
        },
       // Here to change color inside the circle
       // fill: '',
    });


function getDuration (){
  const activityEl = document.querySelector('.card-box');
  //return activityEl.dataset.duration * 60000;
  return 1000 * 60 ;
}

function formatTime(milliseconds) {
  // "3 h : 12 m : 12 s"
  var TimeFormat = require('hh-mm-ss');
  console.log(milliseconds);
  console.log(parseInt(milliseconds,10));
  return TimeFormat.fromMs(parseInt(milliseconds,10), 'hh:mm:ss');
}

function timer() {



//debugger;
  let progress = 0;
  circle.animate(progress);
};

function startTimer() {
  let remainingMilliseconds = getDuration ();

  setInterval(function() {
    remainingMilliseconds -= 1000;
    circle.setText(formatTime(remainingMilliseconds))
  }, 1000);

  let progress = 1 ;
  circle.animate(progress);
}


// export { timerInit, timer };
 export {  timer, startTimer };





