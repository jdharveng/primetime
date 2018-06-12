
function fillStars () {

  const stars = document.querySelectorAll('.fa-star');
  const ratingInput = document.getElementById('review_rating');

  stars.forEach((star, index) => {
    star.addEventListener('click', () => {
      ratingInput.value = index + 1;
      for(let i=0; i < stars.length; i++) {
        if (i <= index) {
          addStarFill(i);
        } else {
          removeStarFill(i);
        }
      }
    })
  })

  function addStarFill(index) {
    stars[index].classList.remove('far');
    stars[index].classList.add('fas');
  }

  function removeStarFill(index) {
    stars[index].classList.add('far');
    stars[index].classList.remove('fas');
  }


}


 export { fillStars };




