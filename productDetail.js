// Vote rating

(function voteRating() {
  var ratings = document.querySelectorAll(".rating-start");
  var ratingsInput = document.querySelectorAll(".rating-start");
  var indexRatingInput = document.querySelector(
    'input[name="rating-input"]:checked'
  ).value;
  var ratingsInput = document.querySelectorAll(".rating-input");
  //   set rating default
  vote(indexRatingInput);

  ratings.forEach((el) =>
    el.addEventListener("click", (event) => {
      var index = event.target.id[7];
      vote(index);
    })
  );
  function vote(index) {
    ratingsInput[index - 1].checked = true;
    for (let i = 0; i < index; i++) {
      ratings[i].className = "fa fa-star rating-start";
    }
    for (let i = index; i < 5; i++) {
      ratings[i].className = "fa fa-star-o rating-start";
    }
  }
})();
// vote rating

(function activeImage() {
  var imageSub = document.querySelectorAll(".img-sub");
  var imageMain = document.querySelector(".img-main img");
  var src;

  console.log(imageMain);
  imageSub.forEach((el) =>
    el.addEventListener("click", (event) => {
      console.log();
      src = imageMain.src;
      imageMain.src = event.target.src;
      event.target.src = src;
    })
  );
})();
